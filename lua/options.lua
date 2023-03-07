vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.mouse='a'
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.hlsearch=false
vim.opt.wrap=true
vim.opt.shiftwidth=2
vim.opt.tabstop=2
vim.opt.termguicolors=true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd("colorscheme gruvbox")
vim.cmd("hi tklink ctermfg=72 guifg=#689d6a cterm=bold,underline gui=bold,underline")
vim.cmd("hi tkBrackets ctermfg=gray guifg=gray ")
vim.cmd("hi tkTag ctermfg=175 guifg=#d3869B")
vim.cmd("hi tkHighlight ctermbg=214 ctermfg=124 cterm=bold guibg=#fabd2f guifg=#9d0006 gui=bold")
