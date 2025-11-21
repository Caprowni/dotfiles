local options = {
  ensure_installed = {
    "lua",
    "vim",
    "python",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
}

require("nvim-treesitter.configs").setup(options)
