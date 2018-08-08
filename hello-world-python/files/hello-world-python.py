#!/usr/bin/env python
#
# Copyright (C) 2018 Sartura Ltd.
#
# Permission is granted to copy, distribute and/or modify this document
# under the terms of the GNU Free Documentation License, Version 1.2
# or any later version published by the Free Software Foundation;
# with no Invariant Sections, no Front-Cover Texts, and no Back-Cover
# Texts.  A copy of the license is included in the section entitled "GNU
# Free Documentation License".

from wsgiref.simple_server import make_server

def app(environ, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    yield b"<h1>Hello World!</h1>"

server = make_server('', 8003, app)
server.serve_forever()
