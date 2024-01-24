local M = {}

M.run_cypress_spec = function()
	local current_file = vim.fn.expand("%:p") -- Get the full path of the current file
	local command = "npx cypress run --headless --browser chrome --spec " .. current_file

	vim.cmd("! " .. command) -- Execute the command in a shell
end

return M
