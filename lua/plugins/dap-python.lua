return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local dap = require("dap")
    local dap_python = require("dap-python")

    dap_python.setup("python") -- or full path to your Python interpreter

    dap.configurations.python = {
      {
        type = "python",
        request = "launch",
        name = "Launch app.server Module",
        module = "app.server",
        justMyCode = false,
      },
      {
        type = "python",
        request = "launch",
        name = "Launch Custom Module",
        module = function()
          return vim.fn.input("Module name: ")
        end,
        justMyCode = false,
      },
    }
  end,
}
