dns = require 'dns'

console.log 'resolving yahoo.com ...'

dns.resolve 'yahoo.com', (err, addresses) ->
  throw err if err 
  console.log 'found: %j', addresses
