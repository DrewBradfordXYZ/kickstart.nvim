local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- System clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p', { noremap = true, silent = true, desc = 'System Clipboard: Paste after' })
vim.keymap.set({ 'n', 'v' }, '<leader>P', '"+P', { noremap = true, silent = true, desc = 'System Clipboard: Paste before' })
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { noremap = true, silent = true, desc = 'System Clipboard: Yank characterwise' })
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y', { noremap = true, silent = true, desc = 'System Clipboard: Yank linewise' })

-- Remember the yanked text when pasting over text
keymap('x', 'p', [["_dP]])

-- Center Screen
keymap('n', 'n', 'nzz', opts) -- search next
keymap('n', 'N', 'Nzz', opts) -- search previous
keymap('n', '*', '*zz', opts) -- search forward: word under the cursor
keymap('n', '#', '#zz', opts) -- search backward: word under the cursor
keymap('n', 'g*', 'g*zz', opts) -- search forward: partial word under cursor
keymap('n', 'g#', 'g#zz', opts) -- search backward: partial word under cursor

-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Navigate to the first and last characters of a line
keymap({ 'n', 'o', 'x' }, '<s-h>', '^', opts)
keymap({ 'n', 'o', 'x' }, '<s-l>', 'g_', opts)