-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

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
      "groovy",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
