-- prepare the installation of packer in install_path
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  vim.cmd('packadd packer.nvim')
  install_plugins = true
end

-- use packer to actually install  plugins
require('packer').startup(function(use)

-- Package manager
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox' 
	use 'renerocksai/telekasten.nvim'
	-- status
	use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
	-- tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
  -- telescope 
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

  if install_plugins then
    require('packer').sync()
  end
end)

require("config.lualine-config")
require("config.nvim-tree-config")
require("config.telescope-config")
require("config.telekasten-config")
