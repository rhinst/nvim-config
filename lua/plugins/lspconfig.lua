return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
    },
    config = function()
      local lspconfig = require("lspconfig")
      local configs = require("lspconfig.configs")
      local util = require("lspconfig.util")
      configs.yang_lsp = {
        default_config = {
          cmd = { "yang-language-server" },
          filetypes = { "yang" },
          root_dir = util.find_git_ancestor,
        },
      }
      require("lspconfig").yang_lsp.setup({})
    end,
  },
}
