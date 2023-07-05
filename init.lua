-- local autocmd = vim.api.nvim_create_autocmd

if vim.g.neovide then
  vim.o.guifont = "JetbrainsMono Nerd Font:h14"
end

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
