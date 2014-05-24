#============================================================#
#                                                            #
# $ID$                                                       #
#                                                            #
# SdkEnv.pm                                                  #
#                                                            #
# Test environment for Perl SDK code                         #
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

package SdkEnv;

$VERSION = '1.1';

use strict;

=head1 NAME

  SdkEnv - The Software Developer Kit test environment.

=head1 SYNOPSIS

  use SdkEnv;

  my $e = SdkEnv->new;

  # Print the strings.  

  $e->log_failure( "I should've majored in Computer Science." );

  $e->log_warning( "Don't touch that dial." );
  
  $e->log_fatal( "Here lies ntest.  R.I.P." );
  
  $e->log_comment( "Nice weather we're having." );

  # Set internal parameters and print them.
  $e->set_param( 'FILER_NAME1', 'tweety' );

  # Get an existing cached parameter.
  my $filer_name = $e->get_param( 'FILER_NAME1' );

=head1 METHODS

=head1 new()

  Instantiate the object.  No arguments are required.
  
=cut

sub new {
	my ( $class, %params ) = @_;

	my $self = bless \%params, $class;

	return $self;
}

=head1 log_failure()

  Takes a string.  Print a failed test.

=cut

sub log_failure {
	my ( $self, $string ) = @_;
	print "Fail:    $string\n";
}

=head1 log_warning()

  Takes a string.  Print a warning.

=cut

sub log_warning {
	my ( $self, $string ) = @_;
	print "Warning: $string\n";
}

=head1 log_fatal()

  Takes a string.  Print a fatal error.

=cut

sub log_fatal {
	my ( $self, $string ) = @_;
	print "Fatal:   $string\n";
}

=head1 log_comment()

  Takes a string.  Print a comment.

=cut

sub log_comment {
	my ( $self, $string ) = @_;
	print "Comment: $string\n";
}

=head1 set_param()

  Set an internal variable.  Prints the parameter.

  $e->set_param( 'FILER_NAME1', 'tweety' );

=cut

sub set_param {
	my ( $self, $name, $value ) = @_;

	$self->{$name} = $value;
	print "Params:  $name => $value\n";
}

=head1 get_param()

  Get the value of an existing cached variable.

  my $filer_name = $e->get_param( 'FILER_NAME1' );

=cut

sub get_param {
	my ( $self, $param ) = @_;

	return $self->{$param};
}

=head1 SEE ALSO

  NateEnv.pm

=head1 IMPORTANT NOTE

  The interface to this class should be maintained in parallel
  with the NateEnv class.

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

