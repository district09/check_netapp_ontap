#============================================================#
#                                                            #
# $ID:$                                                      #
#                                                            #
# NaServer.pm                                                #
#                                                            #
# Client-side interface to ONTAPI APIs                       #
#                                                            #
# Copyright (c) 2010 NetApp, Inc. All rights reserved.       #
# Specifications subject to change without notice.           #
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

package NaServer;

$VERSION = '1.0';	# work with all versions

use	Socket;
use	LWP::UserAgent;
use	XML::Parser;
eval	"require	Net::SSLeay";
eval	"require	IO::Select";
use	NaElement;
use IO::Socket;
# use	vars ('@ISA', '@EXPORT');
# use	Exporter;

our $AUTOLOAD;

# @ISA	= qw(Exporter);
# @EXPORT	= qw(invoke);
# @EXPORT	= qw(invoke_elem);

my $chk_ssl_init = 0;
my $add_sha_256_digest = 1;

my $na_can_use_ipv6;
my $na_can_use_socket6;
my $na_in6addr_any;

my $NMSDK_VERSION = "5.2";
my $NMSDK_LANGUAGE = "Perl";
my $NMSDK_PLATFORM = get_platform_info();
my $nmsdk_bindings = 0;
my $nmsdk_app_name = "";

my $ontap_cluster_api_bindings;
my $ontap_7mode_api_bindings;
my $ocum_classic_api_bindings;
my $ocum_api_bindings;

eval {
	# IPv6 is supported by default (in Socket module) from 5.14 version
	# onwards and Pre 5.14 versions require Socket6 module installed.
	# First prefer using Socket6 module routines on all versions if it
	# is available, else prefer using Socket module from 5.14 version onwards.
	if (eval "require Socket6") {
		Socket6->import(qw(getaddrinfo pack_sockaddr_in6 in6addr_any));
		$na_in6addr_any = Socket6::in6addr_any();
		$na_can_use_socket6 = 1;
		$na_can_use_ipv6 = 1;
	} else {
		if ($] >=  5.014) {
			Socket->import(qw(getaddrinfo pack_sockaddr_in6 IN6ADDR_ANY));
			$na_in6addr_any = &Socket::IN6ADDR_ANY;
			$na_can_use_ipv6 = 1;
		}
	}
};

#============================================================#

=head1 NAME

  NaServer - class for managing Network Appliance(r)
             filers using ONTAPI(tm) APIs.


=cut

=head1 DESCRIPTION

  An NaServer encapsulates an administrative connection to
  a NetApp filer running ONTAP 6.4 or later.  You construct
  NaElement objects that represent queries or commands, and
  use invoke_elem() to send them to the filer (a convenience 
  routine called invoke() can be used to bypass the element
  construction step.  The return from the call is another
  NaElement which either has children containing the command
  results, or an error indication.
  
  The following routines are available for setting up 
  administrative connections to a filer.

=cut

#============================================================#

use	strict;

$::ZAPI_xmlns = "http://www.netapp.com/filer/admin";
$::ZAPI_dtd = "file:/etc/netapp_filer.dtd";
my $FILER_dtd = "file:/etc/netapp_filer.dtd";
my $DFM_ZAPI_dtd = "file:/etc/netapp_dfm.dtd";
my $AGENT_ZAPI_dtd = "file:/etc/netapp_agent.dtd";
$::ZAPI_snoop = 0;

#============================================================#

=head2  new($filer, $majorversion, $minorversion)

  Create a new connection to filer $filer.  Before
  use, you either need to set the style to "hosts.equiv"
  or set the username (always "root" at present) and
  password with set_admin_user().

=cut

sub new {
	my ($class)  = shift;
	my ($server) = shift;
	my ($major_version) = shift;
	my ($minor_version) = shift;
	my ($port)  = 80;
	my ($user)   = "root";
	my ($password) = "";
	my ($style) = "LOGIN";  # LOGIN or HOSTS
	my ($vfiler) = "";
	my ($server_type) = "";
	my ($debug_style) = "";
	my ($xml) = "";
	my ($timeout) = 0;
	my ($prev_resv_port) = 0;
	my ($originator_id) = "";
	my ($use_cba) = 0;
	my ($enable_server_cert_verification) = 0;
	my ($enable_hostname_verification) = 0;
	my ($ctx) = undef;
	my ($trace_threshold) = -1;
	my ($complete_xml_output) = undef;
	my ($need_bindings_validation) = 1;
	my ($bindings_family) = undef;

	my $self = {
		server => $server,
		user   => $user,
		password => $password,
		style => $style,
		major_version => $major_version,
		minor_version => $minor_version,
		transport_type => "HTTP",
		port => $port,
		debug_style =>$debug_style,
		vfiler => $vfiler,
		servertype => $server_type,
		xml => $xml,
		timeout => $timeout,
		prev_resv_port => $prev_resv_port,
		originator_id => $originator_id,
		use_cba => $use_cba,
		enable_server_cert_verification => $enable_server_cert_verification,
		enable_hostname_verification => $enable_hostname_verification,
		ctx => $ctx,
		trace_threshold => $trace_threshold,
		complete_xml_output => $complete_xml_output,
		need_bindings_validation => $need_bindings_validation,
		bindings_family => $bindings_family
	};

	bless $self, $class;

	$self->set_server_type("FILER");
	return $self;
}

#============================================================#

=head2 set_style($style)

  Pass in "LOGIN" to cause the server to use HTTP 
  simple authentication with a username and 
  password.  Pass in "HOSTS" to use the hosts.equiv 
  file on the filer to determine access rights (the
  username must be root in that case). Pass in "CERTIFICATE"
   to use certificate based authentication with the 
   DataFabric Manager server.
   
   If $style = CERTIFICATE, you can use certificates to 
   authenticate clients who attempt to connect to a server 
   without the need of username and password. This style will 
   internally set the transport type to HTTPS. Verification of 
   the server's certificate is required in order to properly 
   authenticate the identity of the server. Server certificate 
   (with hostname) verification will be enabled by default using 
   this style. You can disable server certificate (with hostname) 
   verification using set_server_cert_verification() and you can 
   disable only hostname verification using set_hostname_verification().

=cut

sub set_style ($$) {
	my $self = shift;
	my $style = shift;

	if ($style ne "HOSTS" && $style ne "LOGIN" && $style ne "CERTIFICATE") {
		return $self->fail_response(13001,
			"in NaServer::set_style: bad style \"$style\"");
	}
	if ($style eq "CERTIFICATE") {
		my $ret = $self->set_transport_type("HTTPS");
		return $ret if ($ret);
		$ret = $self->set_server_cert_verification(1);
		return $ret if ($ret);
	} else {
		$self->{enable_server_cert_verification} = 0;
		$self->{enable_hostname_verification} = 0;
	}
	if (($self->{style} eq "CERTIFICATE" && $style ne "CERTIFICATE") && 
			$self->{transport_type} eq "HTTPS") {
		my $ret = $self->init_ssl_context();
		return $ret if ($ret);
	}
	$self->{style} = $style;
	return undef;
}

#============================================================#

=head2 get_style()

  Get the authentication style

=cut

sub get_style () {
	my $self = shift;

	return $self->{style};
}

#============================================================#

=head2 set_admin_user($user, $password)

  Set the admin username and password.  At present
  $user must always be "root".

=cut

sub set_admin_user ($$) {
	my $self = shift;

	$self->{user} = shift;
	$self->{password} = shift;
}

#============================================================#

=head2 set_server_type($type)

  Pass in one of these keywords: "FILER" or "DFM" or "OCUM"
  to indicate whether the server is a Data ONTAP storage system 
  or OnCommand Unified Manager server.

  If you also use set_port(), call set_port() AFTER calling
  this routine.

  The default is "FILER".

=cut

#
#  Note that "AGENT" and "NETCACHE" are also valid values.  We
#  don't expose those to customers yet.
#

sub set_server_type ($$) {
	my $self = shift;
	my $type = shift;
	my $port = $self->{port};

	if ($type !~ /^(Filer|NetCache|Agent|DFM|OCUM)/i) {
		return $self->fail_response(13001,
		  "in NaServer::set_server_type: bad type \"$type\"");
	}

	($type =~ /Filer/i) && do {
		$self->{url} = "/servlets/netapp.servlets.admin.XMLrequest_filer";
		$self->{bindings_family} = "CLUSTER-MODE";
	};
	($type =~ /NetCache/i) && do {
		$self->{url} = "/servlets/netapp.servlets.admin.XMLrequest";
		$self->{port} = 80;
	};
	($type =~ /Agent/i) && do {
		$self->{url} = "/apis/XMLrequest";
		$self->{port} = 4092;
	};
	($type =~ /DFM/i) && do {
		$self->{url} = "/apis/XMLrequest";
		$self->{port} = 8088;
		if($self->{transport_type} eq "HTTPS") {
			$self->{port} = 8488;
		}
		$self->{bindings_family} = "OCUM-CLASSIC";
	};
	($type =~ /OCUM/i) && do {
		$self->{url} = "/apis/XMLrequest";
		$self->set_transport_type("HTTPS");
		$self->{port} = 443;
		$self->{bindings_family} = "OCUM";
	};

	$self->{servertype} = $type;
	return undef;
}

#============================================================#

=head2 get_server_type()

  Get the type of server this server connection applies to.

=cut

sub get_server_type () {
	my $self = shift;

	return $self->{servertype};
}

#============================================================#

=head2 set_transport_type($scheme)

  Override the default transport type.  The valid transport
  type are currently "HTTP", "HTTPS".

=cut

sub set_transport_type ($$) {
	my $self = shift;
	my $scheme = shift;

	if ($scheme ne "HTTP" && $scheme ne "HTTPS") {
		return $self->fail_response(13001,
		  "in NaServer::set_transport_type: bad type \"$scheme\"");
	}

	if ($scheme eq "HTTP") {
		if($self->{servertype} =~ /OCUM/i){
			return $self->fail_response(13001,
		  		"in NaServer::set_transport_type: Server type '" . $self->{servertype} . "' does not support '" . $scheme . "' transport type.");
		}
	
		$self->{transport_type} = "HTTP";
		$self->{port} = 80;
	}
	
	if ($scheme eq "HTTPS") {
	
		$self->{transport_type} = "HTTPS";
		$self->{port} = 443;
		if($self->{servertype} =~ /DFM/i){
			$self->{port} = 8488;
		}

		#One time SSL initialization
		if (!$chk_ssl_init) {

			Net::SSLeay::load_error_strings();
			Net::SSLeay::SSLeay_add_ssl_algorithms();
			#Random seed.
			Net::SSLeay::randomize("", time ^ $$);
			$chk_ssl_init = 1;
		}
		return $self->init_ssl_context();
	}
	return undef;
}
#============================================================#

=head2 get_transport_type()

  Retrieve the transport used for this connection.

=cut

sub get_transport_type () {
	my $self = shift;

	return $self->{transport_type};
}
#============================================================#

=head2 set_debug_style($style)
	
	Set the style of debug.

=cut

sub set_debug_style ($$) {
	my $self = shift;
	my $debug_style = shift;
	
	if ($debug_style ne "NA_PRINT_DONT_PARSE") {
		return $self->fail_response(13001,
		"in NaServer::set_debug_style: bad style \"$debug_style\"");
	}
	else {
		$self->{debug_style} = $debug_style;
		return;
	}
}

#============================================================#

=head2 set_port($port)

  Override the default port for this server.  If you
  also call set_server_type(), you must call it before
  calling set_port().

=cut

sub set_port ($$) {
	my $self = shift;
	my $port = shift;
	
	$self->{port} = $port;
}

#============================================================#

=head2 get_port()

  Retrieve the port used for the remote server.

=cut

sub get_port () {
	my $self = shift;

	return $self->{port};
}

#============================================================#

=head2 is_debugging()

	Check the type of debug style and return the 
	value for different needs.
	Return 1 if debug style is NA_PRINT_DONT_PARSE
	else return 0.
=cut

sub is_debugging()
{
	my $self = shift;	
	my $style = $self->{debug_style};
	if ($style ne "NA_NO_DEBUG") {
		return 1;
	}
	else {
		return 0;
	}
}
#============================================================#

=head2 get_raw_xml_output()

	Return the raw XML output.

=cut

sub get_raw_xml_output()
{
	my $self = shift;

	return $self->{xml};
}
	
#============================================================#

=head2 set_raw_xml_output($$)

	Save the raw XML output.

=cut

sub set_raw_xml_output($$)
{
	my $self = shift;
	my $xml = shift;
	$self->{xml} = $xml;
}
#============================================================#

=head2 use_https()

   Determines whether https is enabled.

=cut

sub use_https () {
	my $self = shift;
	if ($self->{transport_type} eq "HTTPS" ) {
		return 1;
	} else {
		return 0;
	}
}
#============================================================#

=head2 invoke_elem($elt)

  Submit an XML request already encapsulated as
  an NaElement and return the result in another 
  NaElement.

=cut

sub invoke_elem ($) {
	my $self	= shift;
	my $req		= shift;
	my $server	= $self->{server};
	my $user	= $self->{user};
	my $password	= $self->{password};
	my $debug_style = $self->{debug_style};
	my $vfiler  = $self->{vfiler};
	my $originator_id  = $self->{originator_id};
	my $ctx = $self->{ctx};
	my $server_type = $self->get_server_type();
	my $nmsdk_bindings_req = "";
	my $nmsdk_app_req = "";

	#my $xmlrequest = $req->sprintf();
	my $xmlrequest = $req->toEncodedString();

        # This is the filer url, in a form acceptable
	# to the method line of an HTTP transaction.

        my $url = $self->{url};

	my($name,$aliases,$proto,$family,$this_sockaddr,$that_sockaddr);
	my $lowport = 0;
	my($thataddr);
	my ($non_blocking);
	
	my $using_ssl = $self->use_https();
	my $ssl;
	
	my $timeout = $self->get_timeout();
	
	my $sock = undef;
	my $need_server_cert_verification = $self->is_server_cert_verification_enabled();
	$self->{complete_xml_output} = undef;
	#
	# Establish socket connection
	#
	if ($using_ssl) {
	    ($name,$aliases,$proto)=getprotobyname('ssl');
	     $proto = 0;
 	} else {	
	    ($name,$aliases,$proto)=getprotobyname('tcp');
	}

	($that_sockaddr, $family) = $self->get_remote_sockaddr($server, $self->{port});

	if (!$that_sockaddr) {
		return $self->fail_response(13001, "in Zapi::invoke, cannot connect to socket");
	}

	$lowport = 1023 if ( $self->get_style() eq "HOSTS" );

	while($lowport >= 0) {
		$sock = IO::Socket->new();
		if (!socket($sock,$family,&SOCK_STREAM,$proto) ) {
			return $self->fail_response(13001,
				"in Zapi::invoke, cannot create socket");
		}

		#
		# If we are being asked to use a reserved port (we
		# are doing hosts.equiv authentication), then we search to
		# find an available port number below 1024.
		#
		do{
			# do not bind to a reserved port if it is used in previous invoke
			if($lowport != 0 && $lowport == $self->{prev_resv_port}) {
				$lowport--;
			}
			if ( $self->get_style() eq "HOSTS" ) {
				$this_sockaddr = $self->get_local_sockaddr($family, $lowport);
			}
			$lowport--;
		} while (($lowport > 0) && !bind($sock, $this_sockaddr));
		if ($lowport == 0) {
			close($sock);
			return $self->fail_response(13001,
				"in Zapi::invoke, unable to bind "
				."to reserved port, you must be "
				."executing as root");
		}
		$self->{prev_resv_port} = $lowport + 1;
		
		#handle connection time out.
		if ($timeout > 0) {
			$sock->timeout($timeout);

			#In Perl 5.8.8 On windows, IO::Socket::connect call doesn't work 
			#because it dosn't check for EINPROGRESS after connect call
			if($^O eq "MSWin32" && ($] * 1000000 < 5008009)){
			$non_blocking = 1;
			# On windows, the value of FIONBIO is 0x8004667E. 
				ioctl($sock, 0x8004667e, pack("L!", $non_blocking));
			}
		}
		
		if (!$sock->connect($that_sockaddr)) {
			if($^O eq "MSWin32") {
				# On windows, sometimes the bind will succeed but connect fails 
				# with EADDRINUSE on a reserved port. So, try to recreate the
				# socket, bind it to the next available reserve port and attempt
				# to connect it again.
				if($self->get_style() eq "HOSTS" and $!{EADDRINUSE}){
					close($sock);
					$sock = undef;
					next;
				}
				if($timeout > 0 && ($] * 1000000 < 5008009)){
					if (($!{EINPROGRESS} || $!{EWOULDBLOCK})) { 
						$non_blocking = 0;
						if (!IO::Select->new(\*$sock)->can_write($timeout)) {
							ioctl($sock, 0x8004667e, pack("L!",$non_blocking));
							close($sock);
							return $self->fail_response(13001,
							"in Zapi::invoke, cannot connect to socket");
						}
						ioctl($sock, 0x8004667e, pack("L!",$non_blocking));
						last;
					}
				}
			}
			close ($sock);
			return $self->fail_response(13001,
			"in Zapi::invoke, cannot connect to socket");
		} else {
			last;
		}
	}
	
	select($sock); $| = 1;              # Turn on autoflushing
	select(STDOUT); $| = 1;         # Select STDOUT as default output
	
        #
	# Create an HTTP request.
        #
	my $request = HTTP::Request->new('POST',"$url");
	
	if ( $self->get_style() ne "HOSTS" ) {	
		$request->authorization_basic($user,$password);
	}


	my $content = "";
	my $vfiler_req = "";
	my $originator_id_req = "";
	my $trace_threshold = $self->{trace_threshold};

	if($vfiler ne "") {
		$vfiler_req = " vfiler=\"$vfiler\" ";
	}

	if($originator_id ne "") {
		$originator_id_req = " originator_id=\"$originator_id\" ";
	}

	if($nmsdk_bindings == 1) {
		$nmsdk_bindings_req = " nmsdk_bindings='1'";
	}

	if($nmsdk_app_name ne "") {
		$nmsdk_app_req = " nmsdk_app='" . $nmsdk_app_name . "'";
	}

	if ($trace_threshold >= 0) {
		$request->header("X-Trace-Threshold"  => $trace_threshold);
	}

	my $xml_print = "";
	my $FILE = "";
	if ($server_type eq "FILER") {
		$FILE = $FILER_dtd;
	}
	elsif ($server_type eq "DFM") {
		$FILE = $DFM_ZAPI_dtd;
	}
	elsif ($server_type eq "OCUM") {
		$FILE = $DFM_ZAPI_dtd;
	}
	elsif ($server_type eq "AGENT") {
		$FILE = $AGENT_ZAPI_dtd;
	}

	$content = "<?xml version='1.0' encoding='utf-8' ?>"
		."<!DOCTYPE netapp SYSTEM '$FILE'>"
		."<netapp"
		.$vfiler_req
		.$originator_id_req
		." version='"
		.$self->{major_version}.".".$self->{minor_version}
		."' xmlns='$::ZAPI_xmlns'"
		." nmsdk_version='" . $NMSDK_VERSION . "'"
		." nmsdk_platform='" . $NMSDK_PLATFORM . "'"
		." nmsdk_language='" . $NMSDK_LANGUAGE . "'"
		.$nmsdk_bindings_req
		.$nmsdk_app_req
		.">"
		.$xmlrequest
		."</netapp>";

	if ($debug_style eq "NA_PRINT_DONT_PARSE") {
		$xml_print = "<?xml version='1.0' encoding='utf-8' ?>\n"
				."<!DOCTYPE netapp SYSTEM '$FILE'>\n"
				."<netapp"
				.$vfiler_req
				.$originator_id_req
				." xmlns=\"$::ZAPI_xmlns\""
				." version=\""
				.$self->{major_version}.".".$self->{minor_version}."\""
				." nmsdk_version='" . $NMSDK_VERSION . "'"
				." nmsdk_platform='" . $NMSDK_PLATFORM . "'"
				." nmsdk_language='" . $NMSDK_LANGUAGE . "'"
				.$nmsdk_bindings_req
				.$nmsdk_app_req
				.">"
				.$xmlrequest
				."</netapp>";

		print "INPUT:\n$xml_print\n";
	}
	
	$request->content($content);
	$request->content_length(length($content));

	my $methline =  $request->method()." ".$request->uri()." HTTP/1.0\n";
	my $headers  =  $request->headers_as_string();

	if ($using_ssl) {
		$ssl = Net::SSLeay::new($ctx) or return $self->fail_response(13001,
			"in Zapi::invoke, failed to create SSL $!");
		Net::SSLeay::set_fd($ssl, fileno($sock)); #Must use fileno

		if ($need_server_cert_verification) {
			Net::SSLeay::set_verify($ssl, 
			&Net::SSLeay::VERIFY_PEER | &Net::SSLeay::VERIFY_FAIL_IF_NO_PEER_CERT, \&verify);
		}

		Net::SSLeay::connect($ssl) or return $self->fail_response(13001,
		     "in Zapi::invoke failed to connect SSL $!");

		if ($need_server_cert_verification) {
			my $ret = $self->verify_server_certificate($ssl, $server);
			if ($ret) {
				Net::SSLeay::free($ssl);
				close($sock);
				return $ret;
			}
		}
		
		Net::SSLeay::ssl_write_all($ssl, $methline);
		Net::SSLeay::ssl_write_all($ssl, $headers);
		Net::SSLeay::ssl_write_all($ssl, "\n");
		Net::SSLeay::ssl_write_all($ssl, $request->content());

	} else {
		print $sock $methline;
		print $sock $headers;
		print $sock  "\n";
		print $sock $request->content();
	}

	my $xml = "";
	my $response;

	# Inside this loop we will read the response line and all headers
	# found in the response.

	my $n;
	my $state = 0;	# 1 means we're in headers, 2 means we're in content
	my ($key, $val);
	my $line;


	## Perl socket timeout has no effect during socket read.
	## alarm is used (in eval block) to ensure that the control
	## returns to the caller after the timeout period.

	eval {
		local $SIG{ALRM} = sub { die "Timed Out" };
		# Setting the alarm with $timeout value
		alarm $timeout;

		while (1) {
			if ($using_ssl) {
		    		$line = Net::SSLeay::ssl_read_CRLF($ssl);
			} else {	
		    		$line = <$sock>;
			}

			if ( !defined($line) || $line eq "" ) {
				last;
			}
			if ( $state == 0 ) {
				if ($line =~ s/^(HTTP\/\d+\.\d+)[ \t]+(\d+)[ \t]*([^\012]*)\012//) {
					# HTTP/1.0 response or better
					my($ver,$code,$msg) = ($1, $2, $3);
					$msg =~ s/\015$//;
					$response = HTTP::Response->new($code, $msg);
					$response->protocol($ver);
					$state = 1;
					next;
				} else {
					if ($using_ssl) {
						Net::SSLeay::free ($ssl);
					}	
					close($sock);
					return $self->fail_response(13001,
						"in Zapi::invoke, unable to parse "
						."status response line - $line");
				}
			} elsif ( $state == 1 ) {
				# ensure that we have read all headers.
				# The headers will be terminated by two blank lines
				if ( $line =~ /^\r*\n*$/ ) {
					$state = 2;
				} else {
					if ($line =~ /^([a-zA-Z0-9_\-.]+)\s*:\s*(.*)/) {
						$response->push_header($key, $val) if $key;
						($key, $val) = ($1, $2);
					} elsif ($line =~ /^\s+(.*)/ && $key) {
						$val .= " $1";
					} else {
						$response->push_header(
					    	"Client-Bad-Header-Line" => $line);
					}
				}
			} elsif ( $state == 2 ) {
				$xml .= $line;
			} else {
				if ($using_ssl) {
					Net::SSLeay::free ($ssl);
				}	
				close($sock);
				return $self->fail_response(13001,
					"in Zapi::invoke, bad state value "
					."while parsing response - $state\n");
			}
		}

		# Reset the alarm to 0 (i.e. no alarm)
		alarm 0;
	}; # end of eval

	# Check if the 'die' was executed in the previous eval
	if($@ and $@ =~ /Timed Out/) {
		if ($using_ssl) {
			Net::SSLeay::free ($ssl);
		}	
		close($sock);
		return $self->fail_response(13001,
			"Timeout. Could not read API response.");
	}


	if ($using_ssl) {
   	  Net::SSLeay::free ($ssl);  			# Tear down connection
	}	
	close($sock);

	if (!defined($response)) {
		 return $self->fail_response(13001,"No response received");
	}
	my $code = $response->code();
	if ( $code == 401 ) {
		return $self->fail_response(13002,"Authorization failed");
	}
	if ($self->is_debugging() > 0) {
		if ($debug_style eq "NA_PRINT_DONT_PARSE") {
			$self->set_raw_xml_output($xml);
			print "\nOUTPUT:\n$xml\n";
			return $self->fail_response(13001,"debugging bypassed xml parsing");
		}
	}
	return $self->parse_xml($xml,$xmlrequest);
}

#============================================================#

=head2 invoke($api, [$argname, $argval] ...)

   A convenience routine which wraps invoke_elem().
   It constructs an NaElement with name $api, and
   for each argument name/value pair, adds a child
   element to it.  It's an error to have an even
   number of arguments to this function.  

   Example: $myserver->invoke("snapshot-create",
                              "snapshot", "mysnapshot",
			      "volume", "vol0");

=cut

sub invoke (@) {
	my $self = shift;
	my $api  = shift;

	my $num_parms = @_;
	my $i;
	my $key;
	my $value;

	if ( ($num_parms & 1) != 0 ) {
		return $self->fail_response(13001,
			"in Zapi::invoke, invalid number of parameters");
	}

	my $xi = new NaElement($api);

	for ($i = 0; $i < $num_parms; $i += 2) {
		$key = shift;
		$value = shift;
		$xi->child_add(new NaElement($key, $value));
	}
	return $self->invoke_elem($xi);
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

###############################################################################

# "private" subroutines for use by the public routines

#
# This is used when the transmission path fails, and we don't actually
# get back any XML from the server.
#
sub fail_response {
	my $self	= shift;
	my $errno	= shift;
	my $reason	= shift;

	my $n = new NaElement("results");
	$n->attr_set("status","failed");
	$n->attr_set("reason","$reason");
	$n->attr_set("errno","$errno");
	return $n;
}


sub server_start_handler ($$@) {
	my $xp = shift;
	my $el = shift;

	my $n = new NaElement("$el");
	push(@$::ZAPI_stack,$n);

	my $sz = $#$::ZAPI_stack;

	%::ZAPI_atts = ();
	while ( @_ ) {
		my $att = shift;
		my $val = shift;
		$::ZAPI_atts{$att} = $val;
		$n->attr_set($att,$val);
	}
}

sub server_char_handler {
	my $xp = shift;
	my $data = shift;

	my $i = $#$::ZAPI_stack;
	$::ZAPI_stack->[$i]->add_content($data);
}

sub server_end_handler {
	my $xp = shift;
	my $el = shift;

	# We leave the last element on the stack.
	if ( $#$::ZAPI_stack > 0 ) {
		my $sz = $#$::ZAPI_stack;

		# Pop the element and add it as a child
		# to its parent.
		my $n = pop(@$::ZAPI_stack);
		my $ns = $n->sprintf();
		my $i = $#$::ZAPI_stack;

		$::ZAPI_stack->[$i]->child_add($n);
	}
}

# this is a helper routine for invoke_elem

sub parse_raw_xml($$) {
 
	my $self        = shift;
	my $xml         = shift;

	$::ZAPI_stack = [];
 
	my $p = new XML::Parser(ErrorContext => 2);
	$p->setHandlers(
		Start => \&server_start_handler,
		Char => \&server_char_handler,
		End => \&server_end_handler
	);

	eval {
		$p->parse($xml);
	};
	if($@) {
		return $self->fail_response(13001,
			"NaServer::parse_raw_xml - Error in parsing xml: " . $@);
	}

	if ( $#$::ZAPI_stack < 0 ) {
		return $self->fail_response(13001,
		"Zapi::parse_xml - no elements on stack");
	}
	my $r = pop(@$::ZAPI_stack);

	return $r;
}

sub parse_xml {

	my $self	= shift;
	my $xml		= shift;
	my $xmlrequest	= shift;

	$::ZAPI_stack = [];

	my $p = new XML::Parser(ErrorContext => 2);
	$p->setHandlers(
		Start => \&server_start_handler,
		Char => \&server_char_handler,
		End => \&server_end_handler
		);

	eval {
		$p->parse($xml);
	};
	if($@) {
		return $self->fail_response(13001,
			"NaServer::parse_xml - Error in parsing xml: " . $@);
	}

	if ( $#$::ZAPI_stack < 0 ) {
		return $self->fail_response(13001,
			"Zapi::parse_xml - no elements on stack");
	}
	my $r = pop(@$::ZAPI_stack);

	if ( $r->{name} ne "netapp" ) {
		return $self->fail_response(13001,
			"Zapi::parse_xml - Expected <netapp> element, "
			."but got ".$r->{name});
	}

	$self->{complete_xml_output} = $r;

	my $results = $r->child_get("results");
	if (! defined($results)) {
		return $self->fail_response(13001,
			"Zapi::parse_xml - No results element in output!");
	}
	return $results;
}

###
# This method parses an hash and returns corresponding NaElement.
# The second parameter ($root, scalar) is optional. 
# If the root is not provided, the 'name' attribute of the NaElement is left empty.
### 
sub parse_hash ($$) {
	my $self = shift;
	my $hash = shift;
	my $root = shift;
	my $all_api_bindings;
	my $api_bindings;
	my $api_inputs;

	unless(defined $root) {
		$root = "";
	}

	if ($self->is_bindings_validation_enabled() == 1) {
		$all_api_bindings = $self->get_api_bindings();
		$api_bindings = $all_api_bindings->GetApi($root) or die "Invalid API '" . $root . "' specified (13001)\n";
		# Load api inputs for the specified API ($root).
		$api_inputs = $api_bindings->{inputs};
		if ($self->is_valid_scope($api_bindings->{family}) != 1) {
			die "API '" . $root ."' is not in the scope of '" . $api_bindings->{family} . "' family (13001)\n";
		}
	}

	my $root_element = new NaElement("$root");

	if(!$hash or (ref($hash) ne "HASH") or !%{$hash}) {
		return $root_element;
	}

	$::Elem_Stack = [];
	push(@$::Elem_Stack, $root_element);
	while ( my ($key, $value) = each %{$hash}) {
		$self->traverse_hash($key, $value, $api_inputs);
	}

	if ( $#$::Elem_Stack != 0 ) {
		my $msg = "NaServer::parse_hash - failed to parse the hash (13001)\n";
		die $msg;
	}

	my $r = pop(@$::Elem_Stack);
	return $r;
}


###
# This is a private subroutine, primarily used by parse_hash(), to recursively 
# traverse (depth-first) a hash for given key and value.
###
sub traverse_hash($$) {
	my $self = shift;
	my $key = shift;
	my $value = shift;
	my $api_inputs = shift;
	my $all_api_bindings;
	my $field;
	my $flags;

	if ($self->is_bindings_validation_enabled() == 1) {
		$all_api_bindings = $self->get_api_bindings();
	}

	if(ref($value) eq "HASH") {
		if ($self->is_bindings_validation_enabled() == 1) {
			# validate the input field name ($key) against the api bindings inputs
			$field = $api_inputs->{$key};

			# check whether the field name is a valid typedef name
			# special case to handle when field name itself is a typedef name.
			if(!defined($field) and ($api_inputs->{type} ne $key)) {
				die "Invalid field '" . $key . "' specified (13001)\n";
			}

			# field name exists and we check if it is a typedef or not
			if (defined($field)) {
				$flags = $field->{flags};
				if (!$all_api_bindings->IsTypedefFlag($flags) && !defined($all_api_bindings->GetTypedef($field->{type}))) {
						die "Invalid field '" . $key . "' specified (13001)\n";
				}
				if ($self->is_valid_scope($field->{scope}) != 1) {
					die "Invalid scope for field '" . $key . "' (13001)\n";
				}
				if ($key eq $field->{type}) {
					$field = $all_api_bindings->GetTypedef($field->{type})->{fields};
				}
			} else {
				$field = $all_api_bindings->GetTypedef($api_inputs->{type})->{fields};
			}
		}

		my $n = new NaElement($key);
		push(@$::Elem_Stack, $n);

		while ( my ($new_key, $new_value) = each(%$value)) {
			$self->traverse_hash($new_key, $new_value, $field);
		}

		# Pop the top element and add it as a child
		# to its parent (the next top element)
		my $child = pop(@$::Elem_Stack);
		my $top_index = $#$::Elem_Stack;
		$::Elem_Stack->[$top_index]->child_add($child);
	} elsif(ref($value) eq "ARRAY") {
		if ($self->is_bindings_validation_enabled() == 1) {
			$field = $api_inputs->{$key};
			if ($field) {
				if (!$all_api_bindings->IsArrayFlag($field->{flags})) {
					die "Invalid field '" . $key . "' specified (13001)\n";
				}
			} elsif (!$all_api_bindings->IsArrayFlag($api_inputs->{flags})) {
				die "Invalid field '" . $key . "' specified (13001)\n";
			}
		}
		my $top_index = $#$::Elem_Stack;
		for my $array_elem (@{$value}) {
			if (ref($array_elem) eq "SCALAR") {
				my $child = new NaElement($key, $array_elem);
				$::Elem_Stack->[$top_index]->child_add($child);
			} else {
				$self->traverse_hash($key, $array_elem, $api_inputs);
			}
		}
	} else { # SCALAR
			if ($self->is_bindings_validation_enabled() == 1) {
				$field = $api_inputs->{$key};
				if (!defined($field)) {
					if ($api_inputs->{type} ne $key) {
						die "Invalid field '" . $key . "' specified (13001)\n";
					}
				}
				elsif (!(%$field) || $self->is_valid_scope($field->{scope}) != 1) {
					die "Invalid field '" . $key . "' specified (13001)\n";
				}
				elsif ($all_api_bindings->IsArrayFlag($field->{flags})) {
					my $field_type = $field->{type};
					if(defined($field_type) and $field_type ne 'string' and $field_type ne 'boolean' and $field_type ne 'integer') {
						die "Field '" . $field_type . "\[\]' for '" . $key ."' not specified (13001)\n";
					}
				}
			}
		my $child = new NaElement($key, $value);
		my $top_index = $#$::Elem_Stack;
		my $node = $::Elem_Stack->[$top_index]->child_add($child);
	}
}

#============================================================#

=head2 set_bindings_validation($enable)

  Enables or disables api bindings validation for ONTAP or
  OCUM server.

=cut

sub set_bindings_validation() {
	my $self = shift;
	my $enable = shift;

	if($enable != 1 and $enable != 0) {
		die "NaServer::set_bindings_validation - Invalid parameter specified. Valid parameter is 1 (enable) or 0 (disable). (13001)\n";
	}

	$self->{need_bindings_validation} = $enable;
}

#============================================================#

=head2 set_bindings_family($family)

  Set the api family of ONTAP or OCUM server for api bindings validation.
  The bindings validation must already be enabled for setting the family.

  Valid familie types are:
    '7-MODE' and 'CLUSTER-MODE' (default) for 'FILER' server type and
    'OCUM-CLASSIC' for 'DFM' server type and 'OCUM' (default) for 'DFM' or 'OCUM' server type.

=cut

sub set_bindings_family() {
	my $self = shift;
	my $family = shift;

	if($self->{need_bindings_validation} != 1) {
		die "NaServer::set_bindings_family - bindings validation needs to enabled using set_bindings_validation() before setting the bindings family. (13001)\n";
	}

	if (defined($family)) {
		$family = uc($family);
		if ($self->{servertype} =~ /Filer/i) {
			if ($family ne "7-MODE" and $family ne "CLUSTER-MODE") {
				die "NaServer::set_bindings_family() - Invalid family specified for server type 'Filer'. Valid family types are '7-MODE' and 'CLUSTER-MODE' (13001)\n";
			}
		} elsif ($self->{servertype} =~ /DFM/i) {
			if ($family ne "OCUM-CLASSIC" and $family ne "OCUM") {
				die "NaServer::set_bindings_family() - Invalid family specified for server type 'DFM'. Valid family types are 'OCUM-CLASSIC' and 'OCUM' (13001)\n";
			}
		} elsif ($self->{servertype} =~ /OCUM/i) {
			if ($family ne "OCUM") {
				die "NaServer::set_bindings_family() - Invalid family specified for server type 'OCUM'. Valid family type is 'OCUM' (13001)\n";
			}
		}
		$self->{bindings_family} = $family;
	}
}

#============================================================#

=head2 is_bindings_validation_enabled()

 Determines whether API bindings validation is enabled or not.
 By default it is enabled.

=cut

sub is_bindings_validation_enabled() {
	my $self = shift;

	return $self->{need_bindings_validation};
}



#============================================================#

=head2 get_bindings_family()

 Returns the bindings family that is set for API validation.

=cut

sub get_bindings_family() {
	my $self = shift;

	return $self->{bindings_family};
}


#============================================================#

=head2 get_api_bindings()

  Returns api bindings for ONTAP or OCUM server based on the
  family that is specified using set_binding_validation() API.

=cut

sub get_api_bindings() {
	my $self = shift;

	if ($self->{bindings_family} eq "CLUSTER-MODE") {
		if (!defined($ontap_cluster_api_bindings)) {
			$ontap_cluster_api_bindings = eval "require OntapClusterAPI; OntapClusterAPI->new;" ||
				die "Couldn't load ONTAP Cluster-Mode API bindings (13001)\n";
		}
		return $ontap_cluster_api_bindings;
	} elsif ($self->{bindings_family} eq "7-MODE") {
		if (!defined($ontap_7mode_api_bindings)) {
			$ontap_7mode_api_bindings = eval "require Ontap7ModeAPI; Ontap7ModeAPI->new;" ||
				die "Couldn't load ONTAP 7-Mode API bindings (13001)\n";
		}
		return $ontap_7mode_api_bindings;
	} elsif ($self->{bindings_family} eq "OCUM-CLASSIC") {
		if (!defined($ocum_classic_api_bindings)) {
			$ocum_classic_api_bindings = eval "require OCUMClassicAPI; OCUMClassicAPI->new;" ||
				die "Couldn't load OCUM Classic API bindings (13001)\n";
		 }
		return $ocum_classic_api_bindings;
	} else {
		if (!defined($ocum_api_bindings)) {
			$ocum_api_bindings = eval "require OCUMAPI; OCUMAPI->new;" ||
				die "Couldn't load OCUM API bindings (13001)\n";
		 }
		 return $ocum_api_bindings;
	}
}

#============================================================#

=head2 is_valid_scope()

  Determines whether the given scope (family) of the  API or field
  is a valid family or not.

=cut
sub is_valid_scope($@) {
	my $self = shift;
	my $scope = shift;
	my $bindings_family = $self->get_bindings_family();
	my $index = 0;
	my $family;

	if (!defined($scope) or (($#$scope + 1) == 0)) {
		return 1;
	}
	for (@$scope) {
		$family = $scope->[$index++];
		if ($bindings_family eq "7-MODE") {
			if ($family eq "ontap-c" or $bindings_family eq "ontap-vfiler") {
				return 1;
			}
		} elsif ($bindings_family eq "CLUSTER-MODE") {
			if ($family eq "ontap-cluster" or $family eq "ontap-vserver") {
				return 1;
			}
		}
	}
	return 0;
}

#============================================================#

=head2 set_vfiler($vfiler)

  sets the vfiler name. This function is added for vfiler-tunneling.

=cut

sub set_vfiler ($$) {
	my $self = shift;
	my $vfname = shift;

    if($self->{major_version} >= 1) {
        if($self->{minor_version} >= 7) {
            $self->{vfiler} = $vfname;
            return 1;
        }
    }
    return 0;
}

=head2 set_vserver($vserver)
  Sets the vserver name. This function is added for vserver-tunneling.
  However, vserver tunneling actually uses vfiler-tunneling. Hence this
  function internally sets the vfiler name.

=cut

sub set_vserver ($$) {
	my $self = shift;
	my $vserver = shift;

	if($self->{major_version} >= 1 && $self->{minor_version} >= 15) {
		$self->{vfiler} = $vserver;
		return 1;
	}
	return 0;
}

=head2 get_vserver()
  Gets the vserver name. This function is added for vserver-tunneling.
  However, vserver tunneling actually uses vfiler-tunneling. Hence this
  function actually returns the vfiler name.
=cut

sub get_vserver () {
	my $self = shift;
	return $self->{vfiler};
}

=head2 set_originator_id($originator_id)
  Function to set the originator_id before executing any ONTAP API.
=cut

sub set_originator_id ($$) {
	my $self = shift;
	my $originator_id = shift;

	$self->{originator_id} = $originator_id;
	return 0;
}

=head2 get_originator_id()
  Gets the originator_id for the given server context on which the
  ONTAP API commands get invoked.
=cut

sub get_originator_id () {
	my $self = shift;
	return $self->{originator_id};
}

sub set_timeout ($$) {
	my $self = shift;
	my $timeout = shift;
	$self->{timeout} = $timeout;
}

sub get_timeout () {
	my $self = shift;
	return $self->{timeout};
}

=head2 get_complete_xml_output()
  Gets the complete XML output in NaElement format that is being
  # returned by the server.
=cut

sub get_complete_xml_output() {
	my $self = shift;
	return $self->{complete_xml_output};
}
#============================================================#

=head2 set_server_cert_verification()
   Enables or disables server certificate verification by the client.
   Server certificate verification is enabled by default 
   when style is set to CERTIFICATE. Hostname verification is enabled 
   by default during server certificate verification.
=cut

sub set_server_cert_verification ($$) {
	my $self = shift;
	my $enable = shift;

	if ($enable != 0 and $enable != 1) {
		return $self->fail_response(13001,
			"in NaServer::set_server_cert_verification: 
				invalid argument $enable specified");
	}
	if (!$self->use_https()) {
		return $self->fail_response(13001,
			"in NaServer::set_server_cert_verification: server certificate verification can only be enabled or disabled for HTTPS transport type");
	}
	# To verify the DFM Server certificate signature, we need to 
	# add SHA-256 digest. This digest is available in Net::SSLeay 1.36 library 
	# compiled with OPENSSL_VERSION_NUMBER >= 0x0090800fL.
	if ($add_sha_256_digest && $enable && $Net::SSLeay::VERSION >= 1.36 && 
			Net::SSLeay::OPENSSL_VERSION_NUMBER() >= 0x0090800f) {
		eval Net::SSLeay::EVP_add_digest(Net::SSLeay::EVP_sha256());
		$add_sha_256_digest = 0;
	}
	$self->{enable_server_cert_verification} = $enable;
	$self->{enable_hostname_verification} = $enable;
	return undef;
}

#============================================================#

=head2 is_server_cert_verification_enabled()
   Determines whether server certificate verification is enabled or not.
   Returns 1 if it is enabled, else returns 0.
=cut

sub is_server_cert_verification_enabled($) {
	my $self = shift;
	return ($self->{enable_server_cert_verification});
}

#============================================================#

=head2 set_client_cert_and_key()
    Sets the client certificate and key files that are required for 
    client authentication by the server using certificates. 
    If key file is not defined, then the certificate file will be 
    used as the key file.
=cut

sub set_client_cert_and_key ($$$$) {
	my $self = shift;
	my $cert_file = shift;
	my $key_file = shift;
	my $key_passwd = shift;
	my $err_reason;
	my $ctx = $self->{ctx};

	if ($ctx eq "") {
		return $self->fail_response(13001, 
		"in NaServer::set_client_cert_and_key: SSL context not initialized");
	}

	if (!$cert_file) {
		return $self->fail_response(13001, 
		"in NaServer::set_client_cert_and_key: certificate file not specified");
	}

	if (!(Net::SSLeay::CTX_use_certificate_chain_file($ctx, $cert_file))) {
		$err_reason =  $self->get_cert_err_reason(&Net::SSLeay::ERR_get_error);
		return $self->fail_response(13001, 
		"in NaServer::set_client_cert_and_key: failed to load certificate file: " . $err_reason);
	}

	if (!$key_file) {
		$key_file = $cert_file;
	}
	if (!$key_passwd) {
		$key_passwd = "";
	}

	Net::SSLeay::CTX_set_default_passwd_cb($ctx, sub {$key_passwd});

	if (!(Net::SSLeay::CTX_use_PrivateKey_file($ctx, $key_file, &Net::SSLeay::FILETYPE_PEM))) { 
		$err_reason =  $self->get_cert_err_reason(&Net::SSLeay::ERR_get_error);
		return $self->fail_response(13001, 
		"in NaServer::set_client_cert_and_key: failed to load key file: " . $err_reason);
	}
	return undef;
}

#============================================================#

=head2 set_ca_certs()
Specifies the certificates of the Certificate Authorities (CAs) that are 
trusted by this application and that will be used to verify the remote server 
certificate. 

=cut

sub set_ca_certs ($$$) {
	my $self = shift;
	my $ca_file = shift;
	my $err_reason;
	my $ctx = $self->{ctx};

	if (!$ctx) {
		return $self->fail_response(13001, 
		"in NaServer::set_ca_certs: SSL context not initialized");
	}

	if ($ca_file) {
		if(!(Net::SSLeay::CTX_load_verify_locations($ctx, $ca_file, undef))) {
			$err_reason =  $self->get_cert_err_reason(&Net::SSLeay::ERR_get_error);
			return $self->fail_response(13001,
			"in NaServer::set_ca_certs: failed to load trusted CA certificates: " . $err_reason);
		}
	}
	else {
		return $self->fail_response(13001, 
		"in NaServer::set_ca_certs: missing CA certificate file");
	}
	return undef;
}

#============================================================#

=head2 set_hostname_verification()
   Enables or disables hostname verification by the client during server certificate the 
   server certificate.
=cut

sub set_hostname_verification ($$) {
	my $self = shift;
	my $enable = shift;

	if ($enable != 0 and $enable != 1) {
		return $self->fail_response(13001,
			"in NaServer::set_hostname_verification: 
				invalid argument $enable specified");
	}
	if ($self->{enable_server_cert_verification} == 0) {
		return $self->fail_response(13001,
			"in NaServer::set_hostname_verification: server certificate verification is not enabled");
	}
	$self->{enable_hostname_verification} = $enable;
	return undef;
}

#============================================================#

=head2 is_hostname_verification_enabled()
   Determines whether hostname verification is enabled or not.
   Returns 1 if it is enabled, else returns 0
=cut

sub is_hostname_verification_enabled ($) {
	my $self = shift;
	return ($self->{enable_hostname_verification});
}

#============================================================#

=head2 verify_server_certificate()
Subroutine which verifies the common name in the server certificate against 
the given hostname. This subroutine returns "undef" on success.

=cut

sub verify_server_certificate ($$$) {
	my $self = shift;
	my $ssl = shift;
	my $host_name = shift;
	my $err_str;

	my $res = Net::SSLeay::get_verify_result($ssl);

	if ($res != 0) {
		$err_str = $self->get_cert_verify_error_string($res);
		return $self->fail_response(13001, 
		"in NaServer::verify_server_certificate: server certificate verification failed: " . $err_str);
	}
	if ($self->{enable_hostname_verification} == 0) {
		return undef;
	}
	my $cert = Net::SSLeay::get_peer_certificate($ssl);

	if (!$cert) {
		return $self->fail_response(13001, 
		"in NaServer::verify_server_certificate: server certificate not present.");
	}

	my $x509_name = Net::SSLeay::X509_get_subject_name($cert);
	if ($x509_name) {
		my $cert_name = Net::SSLeay::X509_NAME_get_text_by_NID ($x509_name, 13);
		chop($cert_name) if substr( $cert_name, -1, 1 ) eq "\0";
		if (lc($host_name) ne lc($cert_name)) {
			$err_str = sprintf("in NaServer::verify_server_certificate: server certificate name (CN=%s), hostname (%s) mismatch.", 
			$cert_name, $host_name);
			return $self->fail_response(13001, $err_str);
		}
	} else {
		return $self->fail_response
		(13001, "in NaServer::verify_server_certificate: unable to obtain certificate name");
	}
	return undef;
}

#============================================================#

sub verify {
	my ($ok, $subj_cert, $issuer_cert, $depth, $err_code, $arg, $chain) = @_;
	return $ok;
}

sub get_cert_err_reason ($$) {
	my $self = shift;
	my $err_no = shift;
	my $err_str;
	my $err_reason;

	$err_str = Net::SSLeay::ERR_error_string($err_no);
	$err_reason = substr ($err_str, rindex($err_str, ':') + 1);
	return $err_reason;
}

sub  get_cert_verify_error_string ($$) {
	my $self = shift;
	my $err_no = shift;
	my $err_str;

	# Return proper error string for X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT 
	# and X509_V_ERR_SELF_SIGNED_CERT_IN_CHAIN errors
	if ($err_no == 18) {
		$err_str = "the passed certificate cannot be found in the list of trusted certificates";
	} elsif ($err_no == 19) {
		$err_str = "the certificate chain could be built up using the untrusted certificates but the root could not be found locally";
	} else {
		$err_str = Net::SSLeay::X509_verify_cert_error_string($err_no);
	}
	return $err_str;
}

sub init_ssl_context($) {
	my $self = shift;

	if ($self->{ctx}) {
		Net::SSLeay::CTX_free($self->{ctx});
		$self->{ctx} = undef;
	}
	$self->{ctx} = Net::SSLeay::CTX_new() or return $self->fail_response(13001,
			"in NaServer::init_ssl_context - failed to create SSL_CTX ");
		Net::SSLeay::CTX_set_options($self->{ctx}, &Net::SSLeay::OP_ALL)
		and Net::SSLeay::die_if_ssl_error("ssl ctx set options");
}

sub DESTROY ($) {
	my $self = shift;

	if($self->{ctx}) {
		Net::SSLeay::CTX_free($self->{ctx});
	}
}


#============================================================#
=head2

  set_trace_threshold($threshold_value)
  Enables tracing for the API request. This subroutine is
  currently used internally. 0 or any positive integer is a
  valid threshold value.
  Once you enable this, the trace output will be returned in
  "trace_output" child element under the root (netapp) element
  in the API response.
  invoke_elem() will return the entire root element instead of
  results element and the caller has to do a child_get() on root
  element to get the "results" and "trace_output" values.

=cut

sub set_trace_threshold ($$) {
	my $self = shift;
	my $threshold = shift;
	$self->{trace_threshold} = $threshold;
}

#============================================================#
=head2
  Returns the trace threshold value used for the API request.
  This subroutine is currently used internally.
=cut

sub get_trace_threshold () {
	my $self = shift;
	return $self->{trace_threshold};
}

#============================================================#
=head2
  Creates and returns a new remote socket address for the
  specified server and port.
  This subroutine is used internally.
=cut

sub get_remote_sockaddr() {
	my ($self, $server, $port) = @_;
	my ($family, $socktype, $proto, $saddr, $err, @addrinfo);

	eval {
		if ($na_can_use_ipv6 == 1) {
			if ($na_can_use_socket6) {
				@addrinfo = getaddrinfo($server, $port, AF_UNSPEC, SOCK_STREAM);
				if (scalar(@addrinfo) >= 5) {
					($family, $socktype, $proto, $saddr) = @addrinfo;
				}
			} else {
				($err, @addrinfo) = getaddrinfo($server, $port);
				if (!$err or $err eq "") {
					my $ai = shift @addrinfo;
					($family, $saddr) = ($ai->{family}, $ai->{addr});
				}
			}
		} else {
			my $addr = gethostbyname($server);
			$saddr = pack('S n a4 x8', AF_INET, $port, $addr);
			$family = AF_INET;
		}
	};
	return ($saddr, $family);
}

#============================================================#
=head2
  Creates and returns a new local socket address for the
  specified family and port.
  This subroutine is used internally.
=cut

sub get_local_sockaddr() {
	my ($self, $family, $port) = @_;
	my $local_saddr;

	eval {
		if ($family eq AF_INET) {
			$local_saddr = pack('S n a4 x8', AF_INET, $port, INADDR_ANY);
			return $local_saddr;
		} else {
			if (($na_can_use_ipv6) && ($na_in6addr_any)) {
				$local_saddr = pack_sockaddr_in6($port, $na_in6addr_any);
			}
		}
	};
	return $local_saddr;
}

#============================================================#
=head2
  Gets the platform specific information.
  This subroutine is used internally.
=cut

sub get_platform_info {
	my ($osType, $osName, $osRelease, $processor, $osInfo);
	$osType = $^O;
	$osInfo = $osType;

	eval {
		if ($osType eq 'MSWin32') {
			$osInfo = "Windows";
			if (eval "require Win32::TieRegistry") {
				my $matchKey = $Win32::TieRegistry::Registry->Open(
					"LMachine/SOFTWARE/Microsoft/Windows NT/CurrentVersion",
					{ Access => Win32::TieRegistry::KEY_READ(), Delimiter => "/" });
				if ($matchKey && ($osName = $matchKey->{"ProductName"})) {
					undef $matchKey;
					$matchKey = $Win32::TieRegistry::Registry->Open(
						"LMachine/SYSTEM/ControlSet001/Control/Session Manager/Environment",
						{ Access => Win32::TieRegistry::KEY_READ(), Delimiter => "/"});
					if ($matchKey && ($processor = $matchKey->{"PROCESSOR_ARCHITECTURE"})) {
						$osInfo = $osName . " " . $processor;
					} else {
						$osInfo = $osName;
					}
				}
				undef $matchKey;
			}
		} else {
			if ($osType eq 'linux') {
				if (-e "/etc/SuSE-release") {
					chomp($osName = `head -n 1 /etc/SuSE-release`);
				} else {
					chomp($osName = `head -n 1 /etc/issue`);
				}
				if ($osName =~ m/(.*?) \(.*?\)/) {
					$osName = $1;
				}
				chomp($processor = `uname -p`);
				$osInfo = $osName . " " . $processor;
			} elsif ($osType eq 'aix') {
				chomp($osRelease = `oslevel`);
				my $unameInfo;
				my $bitInfo;
				chomp($unameInfo = `uname -sp`);
				($osName, $processor) = split(/\s+/, $unameInfo);
				chomp($bitInfo = `getconf KERNEL_BITMODE`);
				$bitInfo .= "-bit";
				$osInfo = $osName . " " . $osRelease . " " . $processor . " " . $bitInfo;
			} elsif ($osType eq 'solaris')  {
				my $unameInfo;
				my $bitInfo;
				chomp($unameInfo = `uname -srp`);
				chomp($bitInfo = `isainfo -b`);
				$bitInfo .= "-bit";
				$osInfo = $unameInfo . " " . $bitInfo;
			} elsif ($osType eq 'hpux') {
				chomp($osInfo = `uname -srm`);
			} elsif ($osType eq 'freebsd') {
				chomp($osInfo = `uname -srm`);
			}
		}
	};

	return $osInfo;
}

#============================================================#
=head2
  Sets the name of the client application.
=cut

sub set_application_name ($$) {
	my $self = shift;
	$nmsdk_app_name = shift;

}

#============================================================#
=head2
  Gets the name of the client application.
=cut

sub get_application_name () {
	return $nmsdk_app_name;
}

##
# To handle API Bindings call 
##
sub AUTOLOAD {
	my ($self, %args) = @_;
	my $api_name = $AUTOLOAD;

	# Convert subroutine name to proper api name
	$api_name =~ s/.*://;
	$api_name =~ s/_/-/g;

	# Get the NaElement from the hash
	my $xi = $self->parse_hash(\%args, $api_name);

	# Before invoking, set the nmsdk_bindings flag to 1 for NMSDK/API Usage Tracking
	$nmsdk_bindings = 1;

	# Invoke
	my $xo = $self->invoke_elem($xi);

	# Revert the nmsdk_bindings flag to 0 before we proceed further
	$nmsdk_bindings = 0;

	if ($xo->results_status() eq "failed"){
		my $msg = $xo->results_reason() . " (" . $xo->results_errno() . ")\n";
		die $msg;
	}

	my $hash = {};

	if ($self->is_bindings_validation_enabled() == 1) {
		my $all_api_bindings = $self->get_api_bindings();
		my $api_bindings = $all_api_bindings->GetApi($api_name) or die "Invalid API: '" . $api_name . "' specified (13001)\n";
		my $api_outputs = $api_bindings->{outputs};

		$hash = $xo->to_hash($api_outputs, $all_api_bindings);
	} else {
		$hash = $xo->to_hash();
	}

	return $hash;
}

