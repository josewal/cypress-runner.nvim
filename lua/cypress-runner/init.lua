local M = {}

M.run_cypress_spec = function()
	local current_file = vim.fn.expand("%:p") -- Get the full path of the current file
	local command = "npx cypress run --headless --spec " .. current_file

	-- Open a new split at the bottom
	vim.cmd("botright new")

	-- Make the new window a little bigger
	vim.cmd("resize 10")

	-- Run the command in the terminal in the new window
	vim.cmd("term " .. command)

	-- Go back to the previous (original) window
	vim.cmd("wincmd p")
end

return M
