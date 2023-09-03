-- USAGE:   pandoc SAMPLE.md --lua-filter=smallcaps.lua --lua-filter=change_text.lua -o sample.html
return {
	{
		Str = function(elem)
			if elem.text == "{{helloworld}}" then
				return pandoc.Emph({ pandoc.Str("Hello, World") })
			else
				return elem
			end
		end,
	},
}
