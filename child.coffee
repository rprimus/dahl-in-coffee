http = require 'http'
net = require 'net'

# Create a web server
web = http.Server (req, res) ->
  res.writeHead 200
  res.end 'hello from: ' + process.pid


c = net.createConnection '/tmp/node_server.sock'

c.on 'fd', (fd) ->
  web.listenFD fd
