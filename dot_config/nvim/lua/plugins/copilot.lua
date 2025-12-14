return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
      vim.keymap.set("n", "<leader>a", function() end, { desc = "+ Copilot" }),
    },
    keys = {
      -- Öppna/stäng chatten
      { "<leader>ac", function() require("CopilotChat").open() end, desc = "CopilotChat: Open" },
      { "<leader>aC", function() require("CopilotChat").close() end, desc = "CopilotChat: Close" },

      -- Allmän förklaring
      { "<leader>ae", function() require("CopilotChat").explain() end, desc = "CopilotChat: Explain code" },

      -- Visual mode prompts
      { "<leader>af", function() require("CopilotChat").fix() end, mode = "v", desc = "CopilotChat: Fix selection" },
      { "<leader>at", function() require("CopilotChat").tests() end, mode = "v", desc = "CopilotChat: Generate tests" },
      { "<leader>ad", function() require("CopilotChat").docs() end, mode = "v", desc = "CopilotChat: Generate docs" },

      -- Sammanfattning & commit
      { "<leader>as", function() require("CopilotChat").summarize() end, desc = "CopilotChat: Summarize buffer" },
      { "<leader>am", function() require("CopilotChat").commit() end, desc = "CopilotChat: Commit message" },

      -- Sök från buffer / file
      { "<leader>aq", function() require("CopilotChat").quickfix() end, desc = "CopilotChat: Quickfix issues" },
      { "<leader>ao", function() require("CopilotChat").optimize() end, desc = "CopilotChat: Optimize code" },

      -- Chat-prompts från input
      {
        "<leader>ap",
        function()
          local input = vim.fn.input "Ask Copilot: "
          if input ~= "" then require("CopilotChat").ask(input) end
        end,
        desc = "CopilotChat: Ask custom question",
      },
    },
  },
}
