local M = {}

-- Function to run the Cypress command
M.run_cypress_spec = function()
	local current_file = vim.fn.expand("%:p")
	current_file = string.gsub(current_file, " ", "\\ ")
	local command = "npx cypress run --headless --spec " .. current_file

	-- Open a new window at the bottom and switch to it
	vim.cmd("botright new")
	vim.cmd("resize 10")

	-- Save the buffer number for later use
	local bufnr = vim.api.nvim_get_current_buf()

	-- Start terminal with the command
	vim.cmd("term " .. command)

	-- Auto command to close the buffer with a specific command
	vim.api.nvim_buf_set_keymap(bufnr, "n", "q", ":bd!<CR>", { noremap = true, silent = true })

	-- Focus back to the previous buffer
	vim.cmd("wincmd p")
end

return M
