-- Добавляем Packer как пакет в Neovim
vim.cmd [[packadd packer.nvim]]
-- Используем данный коллбэк как список для плагинов
return require('packer').startup(function()

	-- Добавляем Packer в список, чтобы он обновлял сам себя
	use 'wbthomason/packer.nvim'
	
	-- Тема
	use "ellisonleao/gruvbox.nvim"

	-- Отображать rgb/hex цвета
	use { 
		'norcalli/nvim-colorizer.lua',
		config = function() 
			require('colorizer').setup()
		end
	}

	-- Файловый менеджер
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'

	-- Статусбар
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	
	-- LSP сервер
	use 'neovim/nvim-lspconfig'
	
	-- Иконки для автодополнения
	use 'onsails/lspkind-nvim'

	-- Инсталлер для серверов LSP
	use 'williamboman/nvim-lsp-installer'

	-- Удобное меню для обозрения проблем LSP
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	}

	use 'nvim-treesitter/nvim-treesitter'
	
	-- Автодополнение
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
	}

	-- Для jupyter (.ipynb)	
	use "3rd/image.nvim"
	use {
		"benlubas/molten-nvim",
    	build = ":UpdateRemotePlugins",
	}
end)
