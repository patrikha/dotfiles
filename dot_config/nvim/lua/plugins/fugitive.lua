return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G" }, -- laddas först när du kör :Git eller :G
  keys = {
    { "<leader>gs", "<cmd>Git<cr>", desc = "Git status" },
    { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git blame" },
    { "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Git diff split" },
  },
}
