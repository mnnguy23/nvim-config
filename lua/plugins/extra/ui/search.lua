return {
	{
		"windwp/nvim-spectre",
    -- stylua: ignore
    keys = {
      { "<leader>sr", function() require("spectre").open() end, desc = "Search and Replace (Spectre)" },
    },
	},
	{
		"kevinhwang91/nvim-bqf",
		opts = {
			filter = {
				fzf = {
					extra_opts = { "--bind", "ctrl-o:toggle-all", "--delimiter", "│" },
				},
			},
		},
		ft = "qf",
	},
	{
		"kevinhwang91/nvim-hlslens",
		keys = {
			{ "n", [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]] },
			{ "N", [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]] },
			{ "*", [[*<Cmd>lua require('hlslens').start()<CR>]] },
			{ "#", [[#<Cmd>lua require('hlslens').start()<CR>]] },
			{ "g*", [[g*<Cmd>lua require('hlslens').start()<CR>]] },
			{ "g#", [[g#<Cmd>lua require('hlslens').start()<CR>]] },
		},
		config = function()
			require("hlslens").setup()
		end,
	},
	{
		"cshuaimin/ssr.nvim",
		opts = {
			border = "rounded",
			min_width = 50,
			min_height = 5,
			max_width = 120,
			max_height = 25,
			keymaps = {
				close = "q",
				next_match = "n",
				prev_match = "N",
				replace_confirm = "<cr>",
				replace_all = "<leader><cr>",
			},
		},
    --stylua: ignore
    keys = {
      { "<leader>sR", function() require("ssr").open() end, mode = {"n", "x"}, desc = "Search and Replace (SSR)" },
    },
	},
}
