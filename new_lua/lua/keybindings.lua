-- We can also use vim.opt.{Config name} to setup a option.
--
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap('n','<c-s>',':w<CR>',{})
keymap('i','<c-s>','<ESC>:w<CR>a',{})
keymap('n','<c-j>','<c-w>j',opts)
keymap('n','<c-k>','<c-w>k',opts)
keymap('n','<c-l>','<c-w>l',opts)
keymap('n','<c-h>','<c-w>h',opts)
keymap('i','jk','<ESC>',opts) -- Escape remapped to jk
-- LSP Keybindings
function nkeymap(keybind,command,options)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap('n',keybind,command,options)
end
nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
nkeymap('<leader>ff',':lua require("telescope.builtin").find_files()<cr>')
nkeymap('<leader>fg',':lua require("telescope.builtin").live_grep()<cr>')
nkeymap('<leader>fb',':lua require("telescope.builtin").buffers()<cr>')
nkeymap('<leader>fh',':lua require("telescope.builtin").help_tags()<cr>')
