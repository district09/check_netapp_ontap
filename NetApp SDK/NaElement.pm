#============================================================#
#                                                            #
# $ID$                                                       #
#                                                            #
# NaElement.pm                                               #
#                                                            #
# Operations on ONTAPI elements                              #
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

package NaElement;

=head1 NAME

  NaElement - class encapsulating Netapp XML request elements

=cut

=head1 DESCRIPTION

  An NaElement encapsulates one level of an XML element.  
  Elements can be arbitrarily nested.  They have names,
  corresponding to XML tags, attributes (only used for
  results), values (always strings) and possibly children, 
  corresponding to nested tagged items.  See NaServer for 
  instructions on using NaElements to invoke ONTAPI API calls.

  The following routines are available for constructing and 
  accessing the contents of NaElements.

=cut

$VERSION = '1.0';	# work with all versions

use strict;

#============================================================#

=head2  new($name, $value)

  Construct a new NaElement.  The $value parameter is 
  optional for top level elements.

=cut

sub new {
	my ($class) = shift;
	my ($name) = shift;
	my ($cont) = shift;
	my $self = {
		name => $name,
		content => ""
	};
	if ( defined($cont) ) {
		$self->{content} = $cont;
	}
	$self->{children} = [];
	$self->{attrkeys} = [];
	$self->{attrvals} = [];

	bless $self, $class;
	return $self;
}

#============================================================#

=head2  results_status()

  Indicates success or failure of API call.
  Returns either "passed" or "failed".

=cut

sub results_status {
	my $self = shift;
	my $r = $self->attr_get("status");
	if ( $r eq "passed" ) {
		return "passed";
	} else {
		return "failed";
	}
}

#============================================================#

=head2  results_reason()

  Human-readable string describing a failure.
  Only present if results_status does not return "passed'.

=cut

sub results_reason {
	my $self = shift;
	my $r = $self->attr_get("status");
	if ( $r eq "passed" ) {
		return undef;
	}
	$r = $self->attr_get("reason");
	if ( ! $r ) {
		return "No reason given";
	}
	return $r;
}

#============================================================#

=head2  results_errno()

  Returns an error number, 0 on success.

=cut

sub results_errno {
	my $self = shift;
	my $r = $self->attr_get("status");
	if ( $r eq "passed" ) {
		return 0;
	}
	$r = $self->attr_get("errno");
	if (! defined($r)) {
		$r = -1;
	}
	return $r;
}

#============================================================#

=head2  child_get($name)

  Get a named child of an element, which is also an 
  element.  Elements can be nested arbitrarily, so 
  the element you get with this could also have other 
  children.  The return is either an NaElement named 
  $name, or undef if none is found.

=cut

sub child_get ($) {
	my $self = shift;
	my $nm = shift;
	my $arr = $self->{children};
	for ( my $i=0;  $i <= $#$arr; $i++ ) {
		if ( $nm eq $arr->[$i]->{name} ) {
			return($arr->[$i]);
		}
	}
	return undef;
}

#============================================================#

=head2  set_content($content)

  Set the element's value to $content.  This is
  not needed in normal development.

=cut

sub set_content ($) {
	my $self = shift;
	my $data = shift;
	
	$self->{content} = $data;
}

#============================================================#

=head2  get_content()

  Get the content of the element.

=cut

sub get_content () {
	my $self = shift;

	return $self->{content};
}

#============================================================#

=head2  add_content($content)

  Add the element's value to $content.  This is
  not needed in normal development.

=cut

sub add_content ($) {
	my $self = shift;
	my $data = shift;
	
	$self->{content}.= $data;
}

#============================================================#


=head2  has_children()

  Returns "1" if the element has any children,
  "0" otherwise.

=cut

sub has_children {
	my $self = shift;
	my $arr = $self->{children};
	return (($#$arr >= 0) ? 1 : 0);
}

#============================================================#

=head2  child_add($elt)

  Add the element $elt to the children list of
  the current object, which is also an element.

=cut

sub child_add ($) {
	my $self = shift;
	my $toadd = shift;

	my $arr = $self->{children};
	push(@$arr,$toadd);
	$self->{children} = $arr;
}

#============================================================#

=head2  child_add_string($name, $value)

  Construct an element with name $name and contents
  $value, and add it to the current object, which
  is also an element.

=cut

sub child_add_string($$) {
	my $self = shift;
	my $name = shift;
	my $value = shift;
	my $elt = new NaElement($name, $value);

	$self->child_add($elt);
}

#============================================================#

=head2  child_get_string($name)

  Gets the child named $name from the current object
  and returns its value.  If no child named $name is
  found, returns undef.

=cut

sub child_get_string ($) {
	my $self = shift;
	my $name = shift;
	my $elts = $self->{children};
	foreach my $elt (@$elts) {
		if ($name eq $elt->{name}) {
			return $elt->{content};
		}
	}
	return undef;
}

#============================================================#

=head2  child_get_int($name)

  Gets the child named $name from the current object
  and returns its value as an integer.  If no child
  named $name is found, returns undef.

=cut

sub child_get_int ($) {
	my $self = shift;
	return $self->child_get_string(shift);
}


#============================================================#

=head2  children_get()

  Returns the list of children as an array.

=cut

sub children_get {
	my $self = shift;
	my $elts = $self->{children};

	return (@$elts);
}

#============================================================#

=head2  sprintf()

  Sprintf pretty-prints the element and its children,
  recursively, in XML-ish format.  This is of use
  mainly in exploratory and utility programs.  Use 
  child_get_string() to dig values out of a top-level 
  element's children.  

=cut

sub sprintf {
	my $self = shift;
	my $indent = shift;
	my $name = $self->{name};

	if (! defined($indent)) {
		$indent = "";
	}

	my $s = "$indent<$name";
	my $keys = $self->{attrkeys};
	my $vals = $self->{attrvals};
	for ( my $i=0;  $i <= $#$keys; $i++ ) {
		$s .= " ".$keys->[$i]."=\"".$vals->[$i]."\"";
	}
	$s .= ">";

	my $i;
	my $children = $self->{children};

	if ($#$children >= 0) {
		$s .= "\n";
	}

	for ( $i=0;  $i <= $#$children; $i++ ) {
		my $c = $children->[$i];
		if ( ref($c) ne "NaElement" ) {
			die "Unexpected reference found, expected NaElement not ref($c).\n";
		}
		$s .= $c->sprintf("$indent\t");
	}

	my $cont = $self->{content};
	$cont =~ s/&/\&amp;/g;
	$cont =~ s/</\&lt;/g;
	$cont =~ s/>/\&gt;/g;
	$cont =~ s/'/\&apos;/g;
	$cont =~ s/"/\&quot;/g;
	$s .= $cont;

	if ($#$children >= 0) {
		$s .= "$indent";
	}
	$s .= "</$name>\n";
	return $s;
}


=head2  to_hash()

  Converts the element and its children into a Perl hash reference.
  It considers only the name and content of each element. 
  This is primarily used in programs involving Perl Bindings.
  NaServer::parse_hash() is the complementary method which converts
  a hash into NaElement.

=cut

sub to_hash {
	my $self = shift;
	my $field = shift;
	my $all_api_bindings = shift;

	my $name = $self->{name};
	my $content = $self->{content};

	if($content ne "") {
		my $hash = {$name => $content};
		return $hash;
	}

	my $i;
	my $children = $self->{children};

	if ($#$children < 0) {
		my $hash = {$name => undef};
		return $hash;
	}

	my %children_hash = ();
	for ( $i=0;  $i <= $#$children; $i++ ) {
		my $c = $children->[$i];
		if ( ref($c) ne "NaElement" ) {
			die "NaElement::to_hash - Unexpected reference found, expected NaElement not ref($c).\n";
		}

		my $child_hash = {};

		if($all_api_bindings) {
			# if bindings validation is enabled, get the fields/typedefs for each children.
			my $child_name = $c->{name};
			my $child_type = $field->{$child_name}->{type};
			unless($child_type) {
				# It is a typedef
				$child_type = $child_name;
			}

			my $child_field = {};	
			if($child_type ne 'string' and $child_type ne 'boolean' and $child_type ne 'integer') {
				$child_field = $all_api_bindings->GetTypedef($child_type)->{fields};
			}
			
			# With the obtained fields, recursively traverse through each child.
			$child_hash = $c->to_hash($child_field, $all_api_bindings);
		} else {
			$child_hash = $c->to_hash();
		}

		while(my ($key, $value) = each %{$child_hash}) {
			if(exists $children_hash{$key}) {
				my $existing_value = $children_hash{$key};

				if(ref($existing_value) eq "ARRAY") {
					push(@$existing_value, $value);
					$children_hash{$key} = $existing_value;
				} else {
					my @array_value = ($existing_value);
					push(@array_value, $value);
					$children_hash{$key} = \@array_value;
				}
			} else {
				if($all_api_bindings) {
					# check if the given key (child name) is of Array, type
					my $key_field = $field->{$key};
					if ($key_field and $all_api_bindings->IsArrayFlag($key_field->{flags})) {
						# Due to the recursive nature of this subroutine, we expect the $value
						# to be already constructed as a hash which has a the typedef of above
						# $key_field as the key.  The values (inside $value hash) should be an array. 
						# However, if the $value hash only single element, it is still shown as hash
						# and not an array.  If it is a single element, we re-insert it as an array.
						if(ref($value) eq "HASH") {
							# We expect only one key (typedef of $key_field) for the above $value hash.
							# In case, there are multiple keys, we just leave it as it is. 
							# Else, we ensure that the value for the $value hash is an array.
							my @inner_keys = keys (%{$value});
							if($#inner_keys == 0) {
								my $inner_key = $inner_keys[0];
								my $inner_value = $value->{$inner_key};
								if(ref($inner_value) ne "ARRAY") {
									my @inner_value_array = ($inner_value);
									$value->{$inner_key} = \@inner_value_array;
								}
							}
						}
					}
				}
				$children_hash{$key} = $value;
			}
		}
	}

	# Ignore the top element (usually 'results') having attribute (e.g. status="passed"))
	my $attributes = $self->{attrkeys};
	if($#$attributes >= 0) {
		return \%children_hash;
	}

	my $hash = {$name => \%children_hash};
	return $hash;
}


my $DEFAULT_KEY = "#u82fyi8S5\017pPemw";

#============================================================#

=head2  child_add_string_encrypted($name, $value, $key)

  Same as child_add_string, but encrypts $value
  with $key before adding the element to the current
  object.  This is only used at present for certain
  key exchange operations.  Both client and server
  must know the value of $key and agree to use this
  routine and its companion, child_get_string_encrypted().
  The default key will be used if the given key is undef. 
=cut
	
sub child_add_string_encrypted($$$) {
	my $self = shift;
	my $name = shift;
	my $value = shift; 
	my $key = shift;
	
	if (!$name or !$value) {
		die "Invalid input specified for name or value";
	}
	if (!$key) {
		$key = $DEFAULT_KEY;
	}
	if (length($key) != 16) {
		die "Invalid key, key length should be 16";
	}
	my $encrypted_value = RC4($key, $value);
	$self->child_add_string($name, unpack("H*", $encrypted_value));
}

#============================================================#

=head2  child_get_string_encrypted($name, $key)

  Get the value of child $name, and decrypt
  it with $key before returning it.
  The default key will be used if the given key is undef. 
=cut
	
sub child_get_string_encrypted($$)
{
	my $self = shift;
	my $name = shift;
	my $key = shift;

	if (!$key) {
		$key = $DEFAULT_KEY;
	}
	if (length($key) != 16) {
		die "Invalid key, key length should be 16";
	}
	my $value = $self->child_get_string($name);
	my $plaintext = RC4($key, pack("H*", $value));
	return ($plaintext);
}

#============================================================#

=head2  toEncodedString()

  Encodes string embedded with special chars like &,<,>. 
  This is mainly useful when passing string values embedded 
  with special chars like &,<,> to API.
 
  Example : 
  $server->invoke("qtree-create","qtree","abc<qt0",volume,"vol0");

=cut

sub toEncodedString {
        my $self = shift;
        my $n = $self->{name};
        my $s = "<$n";

        my $keys = $self->{attrkeys};
        my $vals = $self->{attrvals};
        for ( my $i=0;  $i <= $#$keys; $i++ ) {
                $s .= " ".$keys->[$i]."=\"".$vals->[$i]."\"";
        }
        $s .= ">";

        my $i;
        my $children = $self->{children};
        for ( $i=0;  $i <= $#$children; $i++ ) {
                my $c = $children->[$i];
                if ( ref($c) ne "NaElement" ) {
            
		 die "Unexpected reference found, expected NaElement not ref($c).\n";
                }
                $s .= $c->toEncodedString();
        }
        # Encode all the characters that can screw up the XML
        my $cont = $self->{content};
        $cont =~ s/&/\&amp;/g;  # it's important that & be substituted first
        $cont =~ s/</\&lt;/g;
        $cont =~ s/>/\&gt;/g;
        $cont =~ s/'/\&apos;/g;
        $cont =~ s/"/\&quot;/g;

        $s .= $cont;
        $s .= "</$n>";
        return $s;
}

#------------------------------------------------------------#
#
# routines beyond this point are "private"
#
#------------------------------------------------------------#

my $MAX_CHUNK_SIZE = 256;

sub RC4($$)
{
	my $item;
	my( @box, $x, $y );
	
	@box = prepare_key( shift );
	$x = $y = 0;
	my $plaintext = shift;
	my $num_pieces = do {
		my $num = length($plaintext) / $MAX_CHUNK_SIZE;
		my $int = int $num;
		$int == $num ? $int : $int+1;
	};
	for my $piece ( 0..$num_pieces - 1 ) {
		my @plaintext = unpack "C*", substr($plaintext, $piece * $MAX_CHUNK_SIZE, $MAX_CHUNK_SIZE);
		for ( @plaintext ) {
		$x = 0 if ++$x > 255;
		$y -= 256 if ($y += $box[$x]) > 255;
		@box[$x, $y] = @box[$y, $x];
		$_ ^= $box[( $box[$x] + $box[$y] ) % 256];
	}
	substr($plaintext, $piece * $MAX_CHUNK_SIZE, $MAX_CHUNK_SIZE) = pack "C*", @plaintext;
	}
	if ($item) {
		$item->{box} = \@box;
		$item->{x} = $x;
		$item->{y} = $y;
	}
	$plaintext;
}

sub prepare_key {
	my @k = unpack( 'C*', shift );
	my @box = 0..255;
	my $y = 0;
	for my $x (0..255) {
		$y = ( $k[$x % @k] + $box[$x] + $y ) % 256;
		@box[$x, $y] = @box[$y, $x];
	}
	wantarray ? @box : \@box;
}


sub attr_set ($$) {
	my $self = shift;
	my $key = shift;
	my $val = shift;

	my $arr = $self->{attrkeys};
	push(@$arr,$key);
	$self->{attrkeys} = $arr;

	$arr = $self->{attrvals};
	push(@$arr,$val);
	$self->{attrvals} = $arr;
}

sub attr_get ($) {
	my $self = shift;
	my $key = shift;

	my $keys = $self->{attrkeys};
	my $vals = $self->{attrvals};
	for ( my $i=0;  $i <= $#$keys; $i++ ) {
		if ( $keys->[$i] eq $key ) {
			return $vals->[$i];
		}
	}
	return undef;
}



=head1 COPYRIGHT

  Copyright 2002-2003 Network Appliance, Inc. All rights 
  reserved. Specifications subject to change without notice.

  This SDK sample code is provided AS IS, with no support or 
  warranties of any kind, including but not limited to 
  warranties of merchantability or fitness of any kind, 
  expressed or implied.  This code is subject to the license 
  agreement that accompanies the SDK.

=cut
