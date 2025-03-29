return {
	"folke/which-key.nvim",
	config = function ()
		local wk = require("which-key")

		wk.setup({})

		wk.register(
		{
			{ "<leader>b", group = "Buffer" },
			{ "<leader>g", group = "Git" },
			{ "<leader>p", group = "Project" },
		}
		)
	end
}
