vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { silent = true, noremap = true }

-- Save and quit
vim.keymap.set("n", "s", ":w<CR>", opts)
vim.keymap.set("n", "Q", ":qa<CR>", opts)
vim.keymap.set("n", "<leader>x", ':bd<CR>', opts)

-- Window Movement
vim.keymap.set("n", "<C-Left>", "<C-w>h", opts)
vim.keymap.set("n", "<C-Down>", "<C-w>j", opts)
vim.keymap.set("n", "<C-Up>", "<C-w>k", opts)
vim.keymap.set("n", "<C-Right>", "<C-w>l", opts)

-- Telescope
vim.keymap.set("n", "<leader>fw", ':lua require("telescope")<CR> <cmd>Telescope live_grep<cr>', opts)
vim.keymap.set("n", "<leader>fi", ':lua require("telescope")<CR> <cmd>Telescope find_files<cr>', opts)

-- Leap
vim.keymap.set("n", "f", ':lua require("leap")<CR> <Plug>(leap-forward)', opts)
vim.keymap.set("n", "F", ':lua require("leap")<CR> <Plug>(leap-backward)', opts)

-- nvim-spider (w,e,b replacement)
vim.keymap.set({"n", "o", "x"}, "w", "<cmd>lua require('spider').motion('w')<CR>", opts)
vim.keymap.set({"n", "o", "x"}, "e", "<cmd>lua require('spider').motion('e')<CR>", opts)
vim.keymap.set({"n", "o", "x"}, "b", "<cmd>lua require('spider').motion('b')<CR>", opts)
vim.keymap.set({"n", "o", "x"}, "ge", "<cmd>lua require('spider').motion('ge')<CR>", opts)

-- Comment
vim.keymap.set("n", "<leader>c", "<cmd> :lua require('Comment.api').toggle.linewise.current()<CR>", opts)
vim.keymap.set("v", "<leader>c", "<esc><cmd> :lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- EasyAlign
vim.keymap.set("v", "<leader>a", ":EasyAlign<CR>", opts)

-- LSP
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "ga", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format { async = false } end, opts)
vim.keymap.set("n", "<leader>k", function() vim.diagnostic.open_float({scope="line"}) end, opts)

-- Nvim Tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


vim.keymap.set("n", "<S-Tab>", "<Plug>(cokeline-focus-prev)", { silent = true })
vim.keymap.set("n", "<Tab>", "<Plug>(cokeline-focus-next)", { silent = true })
vim.keymap.set("n", "<Leader>p", "<Plug>(cokeline-switch-prev)", { silent = true })
vim.keymap.set("n", "<Leader>n", "<Plug>(cokeline-switch-next)", { silent = true })

for i = 1, 9 do
  vim.keymap.set(
    "n",
    ("<F%s>"):format(i),
    ("<Plug>(cokeline-focus-%s)"):format(i),
    { silent = true }
  )
  vim.keymap.set(
    "n",
    ("<Leader>%s"):format(i),
    ("<Plug>(cokeline-switch-%s)"):format(i),
    { silent = true }
  )
end
