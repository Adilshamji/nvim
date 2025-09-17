
-- ~/.config/nvim/lua/adil/plugins/nvim_luasnippets.lua
return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    config = function()
      local ls = require("luasnip")

      ls.config.set_config({
        enable_autosnippets = true,
        region_check_events = "InsertEnter",
        delete_check_events = "TextChanged",
      })

      require("luasnip.loaders.from_lua").lazy_load({
        paths = vim.fn.stdpath("config") .. "/lua/snippets",
      })
      -- require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
