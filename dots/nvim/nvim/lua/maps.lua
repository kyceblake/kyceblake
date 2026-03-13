vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

--
-- File manager
--
map("n", "<leader>e", "<CMD>Lexplore<CR>")

--
-- Window Management
--
-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-S-h>", "<C-w><")
map("n", "<C-S-l>", "<C-w>>")
map("n", "<C-S-k>", "<C-w>+")
map("n", "<C-S-j>", "<C-w>-")

--
-- Tabs
--
map("n", "<leader>tn", "<CMD>tabnew<CR>")
map("n", "<leader>tx", "<CMD>tabclose<CR>")
map("n", "<leader>to", "<CMD>tabonly<CR>")
map("n", "<leader>tl", "<CMD>tabnext<CR>")
map("n", "<leader>th", "<CMD>tabprevious<CR>")

--
-- Code
--
-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- Format file/range
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { silent = true, desc = "Format file or range (in visual mode)" })
