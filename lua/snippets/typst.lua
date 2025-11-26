local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

-- 1. VISUAL SELECTION HELPER
local function get_visual(_, parent)
  local sel = parent.snippet.env.LS_SELECT_RAW
  if sel and #sel > 0 then
    return sn(nil, t(sel))
  else
    return sn(nil, i(1))
  end
end

-- 2. MATH CONTEXT DETECTION
local function in_math()
  local node = vim.treesitter.get_node()
  while node do
    if node:type() == "math" then return true end
    node = node:parent()
  end
  return false
end

return {

  ----------------------------------------------------------------
  -- MATH ZONES
  ----------------------------------------------------------------

  -- FIXED: Added extra <> at the end so i(0) is used
  -- Inline math: mk -> $...$ (Jump out with Tab)
  s({ trig = "mk", snippetType = "autosnippet" },
    fmta("$<>$<>", { d(1, get_visual), i(0) })
  ),
  s({ trig = "dm", snippetType = "autosnippet" },
    fmta("$\n<>\n$<>", { d(1, get_visual), i(0) })
  ),


  -- Multi-line display math: md
  s({ trig = "md", snippetType = "autosnippet" },
    fmta(
      [[
$
  <>
$<>]],
      { d(1, get_visual), i(0) }
    )
  ),

  ----------------------------------------------------------------
  -- INTEGRALS & SUMS
  ----------------------------------------------------------------

  -- Definite Sum: dsum -> sum_(n=1)^(oo)
  s({ trig = "dsum", snippetType = "autosnippet", condition = in_math },
    fmta("sum_(<>=<>)^(<> ) <>", {
      i(1, "n"),
      i(2, "1"),
      i(3, "oo"),
      i(0)
    })
  ),

  -- Definite Integral: dint -> integral_(-oo)^(oo)
  s({ trig = "dint", snippetType = "autosnippet", condition = in_math },
    fmta("integral_(<>)^(<> ) <> dif <>", {
      i(1, "-oo"),
      i(2, "oo"),
      i(3),
      i(0, "x")
    })
  ),

  -- Simple Integral: int
  s({ trig = "int", snippetType = "autosnippet", condition = in_math },
    fmta("integral <> dif <>", {
      i(1),
      i(0, "x")
    })
  ),

  ----------------------------------------------------------------
  -- HELPERS (Fractions, Subscripts)
  ----------------------------------------------------------------
  
  -- Fractions: 1/ -> (1)/
  s({ trig = "(%w+)/", regTrig = true, snippetType = "autosnippet", condition = in_math },
    fmta("(<>)/(<>)<>", {
      f(function(_, snip) return snip.captures[1] end),
      i(1),
      i(0)
    })
  ),
  
  -- Visual Selection Fraction: Select text -> Tab -> /
  s({ trig = "/", condition = in_math },
    fmta("(<>)/(<>)<>", {
      f(function(_, snip) return snip.env.TM_SELECTED_TEXT or "" end),
      i(1),
      i(0)
    })
  ),

  -- Subscripts: x1 -> x_1
  s({ trig = "(%a)(%d)", regTrig = true, snippetType = "autosnippet", condition = in_math },
    fmta("<>_<>", {
      f(function(_, snip) return snip.captures[1] end),
      f(function(_, snip) return snip.captures[2] end)
    })
  ),
}
