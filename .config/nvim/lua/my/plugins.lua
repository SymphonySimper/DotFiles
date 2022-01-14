local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)

	use "wbthomason/packer.nvim"
	use "nvim-lua/popup.nvim" 
  use "nvim-lua/plenary.nvim"
	use 'ap/vim-css-color'
	use 'rust-lang/rust.vim'
	use 'ptzz/lf.vim'
	use 'voldikss/vim-floaterm'
	use 'junegunn/fzf.vim'
	use 'Jorengarenar/vim-MvVis'
	use 'unblevable/quick-scope'
	use 'dhruvasagar/vim-table-mode'
	use {
		{ 'vimwiki/vimwiki', opt = true, ft = "wiki" },
		{ 'mattn/calendar-vim', opt = true }
	}
	use 'tpope/vim-surround'
	use 'takac/vim-hardtime'
	use {'iamcco/markdown-preview.nvim', opt = true, run = 'cd app && npm install', cmd = 'MarkdownPreview'}

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
