if not vim.g.vscode then
  require "user.options"
  require "user.plugins"
  require "user.colorscheme"
  require "user.completion"
  require "user.lsp"
  require "user.telescope"
  require "user.keymaps"
  require "user.treesitter"
  require "user.autopairs"
  require "user.gitsigns"
  require "user.nvim-tree"
  require "user.bufferline"
  require "user.project"
  require "user.lualine"
  --require "user.go"
  -- require "user.go_debug"
  require "user.dap"
  require "user.dap_ui"
  require "user.toggleterm"
  require "user.whichkey"
  require "user.rust_tools"
end

if vim.g.vscode then
  require("user.keymaps_vscode")
end
