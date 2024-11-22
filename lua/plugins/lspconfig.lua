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
      require("lspconfig").yang_lsp.setup({ filetypes = { "yang" } })

      require("lspconfig").pyright.setup({})

      require("lspconfig").intelephense.setup({})
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,
        php = function(config)
          config.configurations = {
            {
              type = "php",
              request = "launch",
              name = "Listen for XDebug",
              port = 9000,
              log = true,
              pathMappings = {
                ["/opt/app/"] = vim.fn.getcwd(),
              },
              hostname = "0.0.0.0",
            },
          }
          require("mason-nvim-dap").default_setup(config)
        end,
      },
    },
  },
}
