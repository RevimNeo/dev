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
		vim.api.nvim_set_keymap('n', '<leader><Tab>', ':lua CloseBuffer() <CR>', { noremap = true, silent = true })

		function CloseBuffer()
			local bufs = vim.fn.getbufinfo({ buflisted = 1 }) -- Get list of buffers

			if #bufs == 1 then
				vim.cmd("quit") -- Quit Neovim if only one buffer left
			else
				vim.cmd("bprev | bd #") -- Switch to next buffer, then delete current
			end
		end
	end
}
