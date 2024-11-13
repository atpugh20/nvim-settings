local vim = vim
local Plug = vim.fn['plug#']

-- Plugins --

vim.call('plug#begin')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.8' })
Plug('olimorris/onedarkpro.nvim')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
vim.call('plug#end')

require('telescope').setup{}
require('mason').setup{}

local configs = require'nvim-treesitter.configs'
local builtin = require('telescope.builtin')
local lspconfig = require('lspconfig')

-- Editor Settings --

vim.wo.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.foldenable = false
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- Keybinds --

vim.cmd[[map <Space> <Leader>]]
vim.cmd[[map <C-c> gcc]]
vim.cmd[[map L $]]
vim.cmd[[map H ^]]
vim.cmd[[map J <C-d>]]
vim.cmd[[map K <C-u>]]
vim.cmd[[nnoremap <Leader>w <C-w>]]

vim.keymap.set('n', '<Leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Treesitter --

configs.setup {
	ensure_installed = "all",
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	}
}

-- Language Servers --

lspconfig.clangd.setup{}
lspconfig.ts_ls.setup{}
lspconfig.pyright.setup{}
lspconfig.cssls.setup{}
lspconfig.html.setup{}

-- Vim commands --

vim.cmd[[colorscheme onedark]]
