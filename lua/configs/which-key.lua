local wk = require("which-key")

wk.setup({})

wk.register({
	p = { name = "Project" },
	g = { name = "Git" },
	b = { name = "Buffer" }
}, {prefix = "<leader>"})
