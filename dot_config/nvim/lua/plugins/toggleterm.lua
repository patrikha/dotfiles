return {
  "akinsho/toggleterm.nvim",
  version = "*",
  lazy = false,
  config = function()
    local toggleterm = require("toggleterm")
    toggleterm.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<M-1>", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle term horizontally" })
    keymap.set("t", "<M-1>", "<cmd>ToggleTerm<cr>", { desc = "Toggle term horizontally" })
    keymap.set("n", "<M-2>", "<cmd>ToggleTerm direction=vertical size=50<cr>", { desc = "Toggle term verticallay" })
    keymap.set("t", "<M-2>", "<cmd>ToggleTerm<cr>", { desc = "Toggle term vertically" })
    keymap.set("n", "<M-3>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toogle term floating" })
    keymap.set("t", "<M-3>", "<cmd>ToggleTerm<cr>", { desc = "Toogle term floating" })
  end,
}
