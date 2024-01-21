-- status.lua
local Job = require('plenary.job')

local M = {}

M.show = function()
    -- Use plenary.job to run 'git status' asynchronously
    local job = Job:new {
        command = 'git',
        args = { 'status' },
        on_exit = function(exit_code, result)
            if exit_code == 0 then
                -- If the exit code is 0, the command was successful
                print(result)
            else
                -- If the exit code is non-zero, there was an error
                print("Error executing Git status command.")
            end
        end,
    }

    job:start()
end

return M
