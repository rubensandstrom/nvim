options = {
    --backup=false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	--completeopt = {"menuone", "noselect"},
	--conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = false,
	showtabline = 2,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = true,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	writebackup = true,
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
	cursorline = true,
	number = true,
	relativenumber = true,
    numberwidth = 2,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 8,
    foldmethod = 'indent',
    foldlevel = 99,
    sidescrolloff = 8,

	}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do 
	vim.o[k] = v
end
