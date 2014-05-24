#============================================================#
#                                                            #
# $ID:$                                                      #
#                                                            #
# ONTAPITestContainer.pm                                     #
#                                                            #
# General test framework for ONTAPI perl suite.              #
#                                                            #
# Copyright 2002-2003 Network Appliance, Inc. All rights     #
# reserved. Specifications subject to change without notice. #
#                                                            #
# This SDK sample code is provided AS IS, with no support or #
# warranties of any kind, including but not limited to       #
# warranties of merchantability or fitness of any kind,      #
# expressed or implied.  This code is subject to the license #
# agreement that accompanies the SDK.                        #
#                                                            #
# tab size = 8                                               #
#                                                            #
#============================================================#

package ONTAPITestContainer;

$VERSION = '1.0';

use strict;

=head1 NAME

  ONTAPITestContainer - Run multiple ONTAPI tests

=head1 SYNOPSIS

  use ONTAPITestContainer;

  my $c = ONTAPITestContainer->new( env => $env );	

  # Get a hash of available tests.
  my $tests = $c->get_test_list;

  # Add tests to the container.
  $c->add_test( 'Test1' );
  $c->add_test( 'Test1' ); # Not a typo; run multiple times.
  $c->add_test( 'Test2' );

  # Returns a reference to an array of the contained test objects.
  my $tests = $c->get_tests;

  # Show the results of all the tests.
  print $c->get_results_string;

  # Get a results count total.
  my ( $pass, $fail ) = $c->get_all_results_count;

  # Run all tests currently in the container.
  $c->run_tests;

=head1 METHODS

=head1 new()

  Create the container instance.  Requires an environment object.

  my $c = ONTAPITestContainer->new( env => $env );

  'env' is an instance of SdkEnv or NateEnv.

=cut

sub new {
	my ( $class, %params ) = @_;

	my $self = bless \%params, $class;

	die "You must provide a SdkEnv object to the ONTAPITestContainer constructor." 
		unless $self->{env};

	$self->{tests} = [];	# Holds the test objects.
	
	return $self;
}

=head1 add_test()

  Add a test to the container.  Takes a string.

  $c->add_test( 'Test1' );

=cut

sub add_test {

	my ( $self, $test ) = @_;

	$test =~ s/(.*)\.pm/$1/;

	my $module = $test;

	eval {
		require "$module.pm";
	};

	my $eval_error = $@;

	$self->{env}->log_fatal( "Couldn't find test module $module.pm." ) if $eval_error;

	my $t = $module->new( env => $self->{env} );

	# Check the test object version against the container version.
	if ( $ONTAPITestContainer::VERSION == $t->VERSION ) {
		push( @{$self->{tests}}, $t ) unless $eval_error;
	} else {
		$self->{env}->log_fatal( "Test $module version does not equal container version and was skipped." );	
	}
}

=head1 run_tests()

  Run all the tests in the container.  No arguments required.

=cut

sub run_tests {

	my ( $self ) = @_;

	my @tests = @{$self->{tests}};

	my $starttime = time;

	for ( @tests ) {

		my $t = $_;

		my $test = ref( $_ );
		$test =~ /Zapi(.+)/;

		my $module = $1 || $test;

		my $testtime = time;

		$self->{env}->log_comment( "Running $module." );

		$t->run;		# Here is what all the fuss is about.

		# Show the results.
		my $tests = $t->get_results;
		for ( sort keys %$tests ) {
			my $result = $tests->{$_} ? "Fail: $tests->{$_}" : "Pass";
			$self->{env}->log_comment( "Results [Start:$starttime] [Test:$testtime] $module: $_: $result" );
		}

		$self->{env}->log_comment( "Finished $module." );
	}
}

=head1 get_tests()

  Get a reference to an array of the contained test objects.

=cut

sub get_tests {

	my ( $self ) = @_;

	my @tests = @{$self->{tests}};

	return \@tests;
}

=head1 get_results_string()

  Get the results of all the tests as a string.  Must be called
  after run_tests().

=cut

sub get_results_string {

	my ( $self ) = @_;

	my $tests = $self->get_tests;

	my $results_string;
	for ( @$tests ) {
		my $package = ref( $_ );
		$results_string .= "$package \n";
		$results_string .= $_->get_results_string;
	}

	return $results_string;
}

=head1 get_all_results_count()

  Get total pass and fail counts for the contained tests.  Must
  be called after run_tests().

=cut

sub get_all_results_count {

	my ( $self ) = @_;

	my $all_pass = 0;
	my $all_fail = 0;
	for ( @{$self->get_tests} ) {
		my ( $pass, $fail ) = $_->get_results_count;
		$all_pass += $pass;
		$all_fail += $fail;
	}

	return $all_pass, $all_fail
}

=head1 get_test_list()

  Returns a reference to a hash of all the tests available.

=cut

sub get_test_list {

	my ( $self ) = @_;

	my @tests = <../../../lib/perl/NetApp/Test/*>;

	my $tests = {};
	for ( @tests ) {
		/Test\/(.*)\.pm/;
		my $module = $1;
		next if $module =~ /readme/i;
		$tests->{$module}++;
	}

	return $tests;
}

=head1 SEE ALSO

  ontapi_test.pl, NaElement.pm, NaServer.pm, SdkEnv.pm, Test.pm, Test[n].pm

=head1 COPYRIGHT

  Copyright 2002-2003 Network Appliance, Inc. All rights 
  reserved. Specifications subject to change without notice.

  This SDK sample code is provided AS IS, with no support or 
  warranties of any kind, including but not limited to 
  warranties of merchantability or fitness of any kind, 
  expressed or implied.  This code is subject to the license 
  agreement that accompanies the SDK.

=cut

1;

