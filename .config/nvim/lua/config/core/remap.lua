vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n", "<Leader>J" , ":resize -5<CR>", { silent = true })
vim.keymap.set("n", "<Leader>K", ":resize +5<CR>", { silent = true })
vim.keymap.set("n", "<Leader>H", ":vertical resize +5<CR>", { silent = true })
vim.keymap.set("n", "<Leader>L", ":vertical resize -5<CR>", { silent = true })

-- Java
-- getter
vim.keymap.set("n", "<Leader>@g", '"gyy[m%O<Esc>"gpdwipublic <Esc>ww"gy$~biget<Esc>$r(a) {}<Esc>i<CR><Esc>Oreturn this.<Esc>"gp')
-- setter
vim.keymap.set("n", "<Leader>@s", '2w"gy$[m%O<CR>public void set<Esc>"gp2b3l"gcw<Esc>lx~$r("gp3b3l"gyw$a <Esc>"gpb~$a) {}<Esc>i<CR><Esc>Othis.<Esc>"gpb~$a = <Esc>"gpb~$a;<Esc>')
