http = require 'http'
net = require 'net'

# Create a web server
web = http.Server (req, res) ->
  res.writeHead 200
  res.end 'hello world\n'

web.listen 8000


# File descriptor server
s = net.Server (c) ->
  c.write 'blah', 'ascii', web.fd
  c.end

s.listen '/tmp/node_server.sock'

