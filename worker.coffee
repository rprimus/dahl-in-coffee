require 'Worker'

w = new Worker 'fib.js'

w.postMessage {calculate: 10}

w.onmessage = (m) ->
  conssole.log 'result: %j', m
  w.terminate
