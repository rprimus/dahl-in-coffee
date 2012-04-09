http = require 'http'

s = http.Server (req, res) ->
  res.writeHead 200
  res.end 'Hello world\n'

s.listen 8000
