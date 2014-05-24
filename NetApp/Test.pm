#============================================================#
#                                                            #
# $ID$                                                       #
#                                                            #
# Test.pm                                                    #
#                                                            #
# Base class for all tests                                   #
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

package Test;

$VERSION = '1.0';

use strict;

=head1 NAME

  Test - Abstract Superclass for all ONTAPI Test Classes

=head1 SYNOPSIS

  @ISA = qw(Test);

=head1 METHODS


=head1 run()

  Abstract method all child classes must implement.

=cut

sub run {

	my ( $self ) = @_;

	$self->{env}->log_fatal( "Subclasses of Test must implement a run() method." );
}

=head1 get_results()

  Returns a hash of the subtest results.

=cut

sub get_results {

	my ( $self ) = @_;

	return $self->{results};
}

=head1 get_results_string()

  Returns a string of the subtest results.

=cut

sub get_results_string {

	my ( $self ) = @_;

	my $results = $self->get_results;
	
	my $results_string .= "Results\n";
	for ( keys %$results ) {
		my $res = $results->{$_} ? "Fail - $results->{$_}" : "Pass";
		$results_string .= "$_: $res\n";
	}

	return $results_string;
}

=head1 get_results_count()

  Returns the total number of passed and failed subtests as two
  scalars.

=cut

sub get_results_count {

	my ( $self ) = @_;

	my $results = $self->get_results;

	my $pass = 0;
	my $fail = 0;
	for ( keys %$results ) {
		$results->{$_} ? $fail++ : $pass++;
	}

	return $pass, $fail;
}

=head1 SEE ALSO

  ontapi_test.pl, ONTAPITestContainer.pm, NaElement.pm, ONTAPI.pm, 
  SdkEnv.pm, Test[n].pm

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

