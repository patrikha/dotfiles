-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "xml",
      "json",
      "yaml",
      "toml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
