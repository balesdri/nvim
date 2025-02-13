vim.cmd [[set packpath=~\AppData\Local\nvim\site]]
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Packer can manage itself
    --use 'folke/which-key.nvim'

    -- Add other plugins here
end)



if vim.g.vscode then
    -- VSCode extension
    vim.opt.number = false  -- Disable line numbers
    vim.opt.relativenumber = false
    vim.opt.clipboard = "unnamedplus"    -- Use system clipboard
else
    -- ordinary Neovim
end


-- Doom-emacs style navigation (NAV TOOL)
vim.g.mapleader = " "

-- [F]ile Management
    --  Open file 
vim.api.nvim_set_keymap('n', '<leader><leader>', ':call VSCodeNotify("workbench.action.quickOpen")<CR>', { noremap = true, silent = true })
    --  f - Search all files in project
vim.api.nvim_set_keymap('n', '<leader>ff', ':call VSCodeNotify("workbench.action.findInFiles")<CR>', { noremap = true, silent = true })


-- [W]indow Management
    -- - - Split window down
vim.api.nvim_set_keymap('n', '<leader>w-', ':call VSCodeNotify("workbench.action.splitEditorDown")<CR>', { noremap = true, silent = true })
    -- | - Split window right
vim.api.nvim_set_keymap('n', '<leader>w|', ':call VSCodeNotify("workbench.action.splitEditorRight")<CR>', { noremap = true, silent = true })
    -- q - Close window
vim.api.nvim_set_keymap('n', '<leader>wq', ':call VSCodeNotify("workbench.action.closeActiveEditor")<CR>', { noremap = true, silent = true })


    -- j - Focus below window
vim.api.nvim_set_keymap('n', '<leader>wj', ':call VSCodeNotify("workbench.action.focusBelowGroup")<CR>', { noremap = true, silent = true })
    -- k - Focus above window
vim.api.nvim_set_keymap('n', '<leader>wk', ':call VSCodeNotify("workbench.action.focusAboveGroup")<CR>', { noremap = true, silent = true })
    -- h - Focus left window
vim.api.nvim_set_keymap('n', '<leader>wh', ':call VSCodeNotify("workbench.action.focusLeftGroup")<CR>', { noremap = true, silent = true })
    -- l - Focus right window
vim.api.nvim_set_keymap('n', '<leader>wl', ':call VSCodeNotify("workbench.action.focusRightGroup")<CR>', { noremap = true, silent = true })


-- [T]ab Management
    -- l - Next tab
vim.api.nvim_set_keymap('n', '<leader>tl', ':call VSCodeNotify("workbench.action.nextEditor")<CR>', { noremap = true, silent = true })
    -- h - Previous tab
vim.api.nvim_set_keymap('n', '<leader>th', ':call VSCodeNotify("workbench.action.previousEditor")<CR>', { noremap = true, silent = true })
    -- q - Close tab
vim.api.nvim_set_keymap('n', '<leader>tq', ':call VSCodeNotify("workbench.action.closeActiveEditor")<CR>', { noremap = true, silent = true })


-- [C]ode Management
    -- c - Comment line
vim.api.nvim_set_keymap('n', '<leader>cc', ':call VSCodeNotify("editor.action.commentLine")<CR>', { noremap = true, silent = true })


-- [/]Search
vim.api.nvim_set_keymap('n', '<leader>/', ':let @/=""<CR>', { noremap = true, silent = true })



-- General settings
vim.opt.syntax = "on"
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true  -- Use spaces instead of tabs
vim.opt.smartindent = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.smartcase = true  -- Ignore case if pattern has no uppercase
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/.nvim/undodir")  -- Save undo history
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.colorcolumn = "80"
vim.cmd("highlight ColorColumn ctermbg=0 guibg=lightgrey")