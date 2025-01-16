return {
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
