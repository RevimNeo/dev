local wk = require("which-key")

wk.setup({})

wk.register(
{
	{ "<leader>b", group = "Buffer" },
	{ "<leader>g", group = "Git" },
	{ "<leader>p", group = "Project" },
}
)
