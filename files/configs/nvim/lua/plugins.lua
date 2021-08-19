require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
  -- highlighter
  use {
    'norcalli/nvim-colorizer.lua',
    config = function() require'colorizer'.setup() end
  }

  -- Smooth scrolling
  use 'karb94/neoscroll.nvim'
  -- indent lines
  use 'lukas-reineke/indent-blankline.nvim'
  -- better c-x c-a
  use 'monaqa/dial.nvim'
  -- search index like [2/4]
  use 'google/vim-searchindex'
	-- use gc to comment
	use 'tpope/vim-commentary'
  

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp-status.nvim'
  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' }
  }
	-- completion
  use 'hrsh7th/nvim-compe'
	-- snippet
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = "make"
  }
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- Git
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'  -- fugitive companion for GH
  use 'rhysd/committia.vim'
  use 'rhysd/git-messenger.vim'
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  
  -- language specific
  -- LaTeX
  use 'lervag/vimtex'
  use {
    'KeitaNakamura/tex-conceal.vim',
    ft = { 'tex' }
  }
  -- python
  use { 
    'Vimjas/vim-python-pep8-indent',
    ft = { 'python' }
  }
	-- colorscheme
	use {
		'shaunsingh/nord.nvim',
		config = function() vim.cmd[[colorscheme nord]] end
	}
  use 'kyazdani42/nvim-web-devicons'
end)
