#============================================================#
#                                                            #
# $ID$                                                       #
#                                                            #
# ONTAPI.pm                                                  #
#                                                            #
# Parse ONTAPI logs                                          #
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

package ONTAPILogParser;

$VERSION = '1.0';

use strict;

sub new {
	my ( $class, %params ) = @_;
	my $self = bless \%params, $class;
	return $self;
}

sub set_limit { 
	my ( $self, $limit ) = @_; 
	$self->{limit} = $limit;
}

sub get_limit {
	my ( $self ) = @_;
	return $self->{limit};
}

sub get_dir {
	my ( $self ) = @_;
	return $self->{dir};
}

sub get_sorted_logs {
	my ( $self ) = @_;
	return $self->{sorted_logs};
}

sub fetch_logs {
	my ( $self, $dir ) = @_;

	$self->{dir} = $dir;

	my @logs = <$dir/*>;

	$self->{logs} = \@logs;
}

sub sort_logs {
	my ( $self, $limit ) = @_;

	$limit ||= @{$self->{logs}};

	s/.*\/(\d+?)$/$1/ for @{$self->{logs}};		# Name only

	my @sorted;
	for ( sort { $a <=> $b } @{$self->{logs}} ) {
		push( @sorted, $_ );
	}
	
	my $upper = @sorted - 1;
	my $lower = @sorted - $limit;

	my @limited = @sorted[$lower..$upper];	

	$self->{sorted_logs} = \@limited;
}

sub gulp {
	my ( $self ) = @_;
	
	my @lines;
	for ( @{$self->{sorted_logs}} ) {
		open( FILE, "<$self->{dir}/$_" );
		my @file = <FILE>;
		push( @lines, @file );
		close FILE;
	}

	return \@lines;
}

sub regex {
	my ( $self, $regex, $lines ) = @_;

	my @found;
	for ( @$lines ) {
		chomp;
		push( @found, $_ ) if /$regex/;
	}

	return \@found;
}

sub parse_line {
	my ( $self, $line ) = @_;

	my $tokens = {};

	$line =~ /\[Start:(\d+)\] \[Test:(\d+)\] (\w+): (\w+): (.*)/;

	return unless $1;

	$tokens->{start_time} = $1;
	$tokens->{test_time} = $2;
	$tokens->{test} = $3;
	$tokens->{subtest} = $4;
	$tokens->{result_string} = $5;
	$tokens->{result} = $5 eq "Pass" ? "Pass" : "Fail";

	return $tokens;
}

1;

=head1 COPYRIGHT

  Copyright 2002-2003 Network Appliance, Inc. All rights 
  reserved. Specifications subject to change without notice.

  This SDK sample code is provided AS IS, with no support or 
  warranties of any kind, including but not limited to 
  warranties of merchantability or fitness of any kind, 
  expressed or implied.  This code is subject to the license 
  agreement that accompanies the SDK.

=cut