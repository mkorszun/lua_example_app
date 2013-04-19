-- web.lua
require "xavante"

port = ...

xavante.HTTP {
  server = { host = "*", port = tonumber(port) },
  defaultHost = {
    rules = {
      {
        match = ".",
        with = function(req, res)
          res.headers["Content-type"] = "text/html"
          res.content = "hello world, the time is: " .. os.date()
          return res
        end
      }
    }
  }
}

xavante.start()
