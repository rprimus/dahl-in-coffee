dns = require 'dns'
http = require 'http'

console.log 'starting DNS resolution server ...'


s = http.Server (req, res) ->

  dn = req.url.replace '/', ''
  
  res.writeHead 200
  res.write 'resolving: ' + dn + ' ...\n'

  dns.resolve dn, (err, addr) ->
    if err
      res.end 'unknown host: ' + dn + '\n'
    else
      res.end JSON.stringify(addr) + '\n'

s.listen 8000
