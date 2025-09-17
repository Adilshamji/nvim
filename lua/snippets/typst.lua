
local ls  = require("luasnip")
local s   = ls.snippet
local t   = ls.text_node
local i   = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  s({ trig = "dm", snippetType = "autosnippet" }, {
    t({ "$", "  " }), i(0), t({ "", "$" }),
  }),

  s({ trig = "mk", snippetType = "autosnippet" }, {
    t("$"), i(1), t("$"),
  }),

s("header", fmt([[
#import "@preview/bamdone-ieeeconf:0.1.1": ieee

#show: ieee.with(
  title: [{title}],
  abstract: [
    {abstract}
  ],
  authors: (
    (
      given: "{given}",
      surname: "{surname}",
      email: [{email}],
      affiliation: {affiliation},
    ),
  ),
  affiliations: (
    (
      name: [{aff_name}],
      address: [{aff_address}],
      email-suffix: [{email_suffix}],
    ),
  ),
)

= {h1}

{cursor}
]], {
    title        = i(1,  "Digital Image Processing, Lectures"),
    abstract     = i(2,  "Abstract goes here…"),
    given        = i(3,  "Adil"),
    surname      = i(4,  "Shamji"),
    email        = i(5,  "adil02.shamji"),
    affiliation  = i(6,  "1"),
    aff_name     = i(7,  "Linköping, Sweden"),
    aff_address  = i(8,  "Asham, Linköping, Sweden"),
    email_suffix = i(9,  "gmail.com"),
    h1           = i(10, "Lecture 1"),
    cursor       = i(0),
  })),
s({ trig = "td", snippetType = "autosnippet" }, {
  t("#todo["),        -- fixed text
  i(1, "Write something"), -- first insert point with placeholder
  t("]"),             -- closing bracket
}),

}

