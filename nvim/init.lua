-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Leader must be set before lazy loads plugins
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core settings
vim.opt.number = true
vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.foldenable = false
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"     -- keeps gutter stable, prevents layout jumping
vim.opt.updatetime = 250       -- faster LSP responses
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.splitright = true

-- Keybinds
vim.keymap.set({ "n", "v" }, "L", "$",      { desc = "End of line" })
vim.keymap.set({ "n", "v" }, "H", "^",      { desc = "Start of line" })
vim.keymap.set({ "n", "v" }, "J", "<C-d>",  { desc = "Scroll down" })
vim.keymap.set({ "n", "v" }, "K", "<C-u>",  { desc = "Scroll up" })
vim.keymap.set("n", "<Leader>w", "<C-w>",   { desc = "Window commands" })

vim.keymap.set("n", "<Leader>t", function()
  vim.cmd("vsplit | terminal")
  vim.cmd("vertical resize 60")
  vim.cmd("startinsert")
end, { desc = "Open terminal" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Load plugins
require("lazy").setup("plugins", {
  change_detection = { notify = false },
})
