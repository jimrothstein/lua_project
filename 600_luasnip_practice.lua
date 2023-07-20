--  PURPOSE:    Practice area to test/debug luasnips BEFORE add to my lua config
--  REF:   https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md
--
-- required shortcuts
--
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local test1 = function()
	return { os.date("%d-%B-%Y") }
end

local filename = function()
	return { vim.fn.expand("%:p") }
end

ls.add_snippets("all", {
	s("ternary", {
		-- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
		i(1, "cond"),
		t(" ? "),
		i(2, "then"),
		t(" : "),
		i(3, "else"),
	}),
	-- using non-abbrex
	-- snip:  test1 (date)
	snip({
		trig = "test1",
		namr = "Date",
		dscr = "Test1:: Date in the form of YYYY-MM-DD",
	}, {
		func(test1, {}),
	}),
	s({
		trig = "triggerA",
		dscr = "triggerA",
	}, {
		t("Wow"),
	}),
	--- snip: squote
	s({ trig = "squote", dscr = "Single quotes" }, {
		t("'"),
		i(1),
		t("'"),
		i(0),
	}),
	--- snip: backtick
	s({ trig = "backtick", dscr = "Single quotes" }, {
		t("`"),
		i(1),
		t("`"),
		i(0),
	}),
	s({ trig = "file", dscr = "insert filename" }, {
		func(filename, {}),
	}),
})
