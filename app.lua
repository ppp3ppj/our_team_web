local lapis = require("lapis")
local app = lapis.Application()
app:enable("etlua") -- enable etlua
app.layout = require "views.layout"


-- Routes --
app:get("/", function()
  return "Welcome to Lapis " .. require("lapis.version")
end)

app:get("/me", function()
    return { render = "pages.index" }
end)

return app
