return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function ()
		vim.opt.termguicolors = true
		require("bufferline").setup({})

		-- Navigate between buffers
		vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader>bc', ':BufferLinePickClose<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader><Tab>', ':bd<CR>', { noremap = true, silent = true })
	end
}
