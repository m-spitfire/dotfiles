vim.opt.termguicolors = true
vim.opt.inccommand = 'nosplit'
vim.opt.hlsearch = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hidden = true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 200
vim.opt.linebreak = true
vim.opt.showbreak = "⤚ "
vim.opt.showmatch = true
vim.opt.visualbell = true
vim.opt.listchars = { tab = "├─", space = "·", eol = ">" }
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = "yes:1"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 3
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.diffopt = { "vertical", "filler", "foldcolumn:1", "indent-heuristic", "algorithm:patience" }
if vim.opt.diff == 1 then
	vim.cmd("syntax off")
	vim.opt_local.spell = false
end
vim.opt.shortmess:append({ c = true })
vim.opt.backup = true
vim.opt.backupdir = "/tmp//"
vim.opt.joinspaces = false
vim.opt.virtualedit = { "block" }
