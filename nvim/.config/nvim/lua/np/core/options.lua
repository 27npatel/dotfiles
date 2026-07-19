vim.g.netrw_banner = 0

-- UI
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.guicursor = ""
vim.opt.colorcolumn = "0"

-- indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = false
vim.opt.wrap = false
vim.opt.autoindent = true
vim.opt.cmdheight = 0

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

-- backup and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- folding
vim.o.foldenable = true
vim.o.foldmethod = "manual"
vim.o.foldlevel = 99
vim.o.foldcolumn = "0"

-- misc
vim.opt.clipboard:append("unnamedplus")
vim.opt.backspace = "indent,eol,start"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.mouse = "a"

-- Hightlight yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})
