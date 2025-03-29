return {
	"tpope/vim-commentary",
	config = function ()
		vim.keymap.set("v", "<leader>cl", "gc", { remap = true })
	end
}
