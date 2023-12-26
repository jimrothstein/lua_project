local greet = require("greetings.awesome-module") -- import 'module'

return {
	x = greet, -- return the function (found in module)
}

--  :lua require("greetings").x()
