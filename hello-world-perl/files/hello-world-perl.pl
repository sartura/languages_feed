#
# Copyright (C) 2018 Sartura Ltd.
#
# Permission is granted to copy, distribute and/or modify this document
# under the terms of the GNU Free Documentation License, Version 1.2
# or any later version published by the Free Software Foundation;
# with no Invariant Sections, no Front-Cover Texts, and no Back-Cover
# Texts.  A copy of the license is included in the section entitled "GNU
# Free Documentation License".

use Socket;

my $port = 8005;
my $protocol = getprotobyname( "tcp" );

socket( SOCK, PF_INET, SOCK_STREAM, $protocol ) or die "couldn't open a socket: $!";
  # PF_INET to indicate that this socket will connect to the internet domain
  # SOCK_STREAM indicates a TCP stream, SOCK_DGRAM would indicate UDP communication

setsockopt( SOCK, SOL_SOCKET, SO_REUSEADDR, 1 ) or die "couldn't set socket options: $!";
  # SOL_SOCKET to indicate that we are setting an option on the socket instead of the protocol
  # mark the socket reusable

bind( SOCK, sockaddr_in($port, INADDR_ANY) ) or die "couldn't bind socket to port $port: $!";
  # bind our socket to $port, allowing any IP to connect

listen( SOCK, SOMAXCONN ) or die "couldn't listen to port $port: $!";
  # start listening for incoming connections

while( accept(CLIENT, SOCK) ){
  print CLIENT "HTTP/1.1 200 OK\r\n" .
               "Content-Type: text/html; charset=UTF-8\r\n\r\n" .
               "<html><head><title>Hello world!</title></head><body>Hello world!</body></html>\r\n";
  close CLIENT;
}
