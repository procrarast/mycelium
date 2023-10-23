
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Install lazy.nvim if not already present
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})

end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	--{'folke/tokyonight.nvim'},
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'L3MON4D3/LuaSnip'},
	{'norcalli/nvim-colorizer.lua'},
	{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
})

-- Colorscheme :0)i
color = color or "gruvbox"
--vim.cmd.colorscheme('tokyonight')
vim.cmd.colorscheme(color)
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set so=999')
vim.cmd('set termguicolors')
vim.cmd('set background=dark')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	handlers = {
		lsp_zero.default_setup,
	},
})

-- Personal adjustments! ^_^
require("pc31754")
require'colorizer'.setup()
