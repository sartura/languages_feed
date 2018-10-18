--
-- Copyright (C) 2018 Sartura Ltd.
--
-- Permission is granted to copy, distribute and/or modify this document
-- under the terms of the GNU Free Documentation License, Version 1.2
-- or any later version published by the Free Software Foundation;
-- with no Invariant Sections, no Front-Cover Texts, and no Back-Cover
-- Texts.  A copy of the license is included in the section entitled "GNU
-- Free Documentation License".

local socket = require("socket")
local server = assert(socket.bind("*", 8009))
while 1 do
  local client = server:accept()
  local html = "Hello world!\n"
  client:send(html)
  client:close()
end
