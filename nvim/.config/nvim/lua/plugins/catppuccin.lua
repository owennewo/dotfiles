return { 
  "catppuccin/nvim", 
  name="catppuccin", 
  lazy = false,
  priority = 1000,
  config = function()
    vim.colorscheme = "catppuccin"
  end
}
