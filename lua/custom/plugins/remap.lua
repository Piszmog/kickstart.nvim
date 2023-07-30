-- Vim Commands
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Go to project view" })

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = "Live grep" })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = "Find buffer" })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = "Find help tags" })
vim.keymap.set('n', '<leader>fs', function()
	telescope.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Find files with grep" })

-- Telescope File Browser
vim.keymap.set('n', '<leader>fe', function()
	vim.cmd('Telescope file_browser path=%:p:h select_buffer=true')
end, { desc = "Toggle file browser" })

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = "Harpoon current file" })
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = "Harpoon toggle quick menu" })
vim.keymap.set('n', '<leader>hc', mark.clear_all, { desc = "Harpoon clear all" })

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })

-- Fugitive
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = "Git status" })

-- Formatting
vim.keymap.set('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format()<CR>', { desc = "Format" })

-- Tmux
vim.keymap.set('n', '<C-h>', '<cmd>TmuxNatigateLeft<CR>', { desc = "Tmux navigate left" })
vim.keymap.set('n', '<C-j>', '<cmd>TmuxNatigateDown<CR>', { desc = "Tmux navigate down" })
vim.keymap.set('n', '<C-k>', '<cmd>TmuxNatigateUp<CR>', { desc = "Tmux navigate up" })
vim.keymap.set('n', '<C-l>', '<cmd>TmuxNatigateRight<CR>', { desc = "Tmux navigate right" })

return {}
