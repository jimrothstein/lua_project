

 ---------------------------------------------------------------
-- TEST HERE FIRST:   https://gitspartv.github.io/lua-patterns/
 ---------------------------------------------------------------
 --
-- REF:	<https://wiki.facepunch.com/gmod/Patterns>
 -- TODO:
 --	Practice !   
 --	how to use ^
 --
 -- (1)
local str = "1. Don't spam!"
local pattern = "([%a']+)" -- will match a substring that has one or more letter or apostrophes (')
local start, endpos, word = string.find(str, pattern)

 -- (2) easy
local f = function(s)
	local pattern = "([%a']+)"
	local start, endpos, word = string.find(s, pattern)
	print(start, endpos, word)
end


-- f("Don't")
-- f("abc xyz")
-- f("a'a")
--f("a'b")
--
 ---------------------------------------------------------------

--  (3) :lua xxxx
local start, endpos, word = string.find("apple", "([%a]+)")
print(start, endpos, word)


 ---------------------------------------------------------------
-- (4) BEST?
-- both string, pattern
local h = function(s, pattern)
--	local pattern = "^[%a']+"
	local start, endpos, word = string.find(s, pattern)
	print(start, endpos, word)
end

h("Don't", "[%a']+")  -- WRONG
h("Don't", "([%a']+)") -- CORRECT
h("apple banana", "([%a']+)")
h("++a apple banana", "([%a']+)")
h("++a apple banana", "(^[%a']+)")   -- WHY?
h("apple ++a banana", "(^[%a']+)")   -- WHY?
h("apple banana", "^[b]+")
h("bapple banana", "^[b]+")
h("bb bapple banana", "^[b]+")

 ---------------------------------------------------------------
