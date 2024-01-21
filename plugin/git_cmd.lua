local M = {}

M.setup = function()
    vim.api.nvim_set_keymap('n', '<leader>gs', ':lua require("plugin.status").show()<CR>',
        { noremap = true, silent = true })
end

return M
