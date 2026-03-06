return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = { "zbirenbaum/copilot.lua", "nvim-lua/plenary.nvim" },
    opts = {
      -- Force Copilot provider & model (not github_models)
      provider = "copilot",
      model = "claude-sonnet-4.5", -- or another Copilot model your org allows
      providers = {
        github_models = { enabled = true }, -- disable to avoid accidental selection
      },
    },
  },
}
