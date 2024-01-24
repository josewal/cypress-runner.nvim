local M = {}

M.run_cypress_spec = function()
	local current_file = vim.fn.expand("%:p") -- Get the full path of the current file

	-- Check if the current file ends with .cy.ts
	if string.match(current_file, "%.cy%.ts$") then
		local command = "npx cypress run --headless --spec " .. current_file
		vim.cmd("! " .. command) -- Execute the command in a shell
	else
		print("Not a .cy.ts file")
	end
end

return M
