return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("lsp.servers")
		require("lsp.handlers").setup()
	end,
	dependencies = {
		{
			"williamboman/mason.nvim",
			config = function()
				require("mason").setup({
					ui = {
						border = "solid",
						icons = {
							package_installed = " ",
							package_pending = " ",
							package_uninstalled = " ",
						},
					},
				})
			end,
		},
		{ "folke/trouble.nvim", config = true },
		{
			"RRethy/vim-illuminate",
			config = function()
				require("illuminate").configure({
					providers = {
						"lsp",
						"treesitter",
						"regex",
					},
					delay = 200,
					filetypes_denylist = {
						"lazy",
						"help",
						"lspinfo",
						"NvimTree",
						"TelescopePrompt",
						"Outline",
						"Trouble",
						"toggleterm",
					},
				})
			end,
		},
		{
			"ray-x/lsp_signature.nvim",
			config = function()
				require("lsp_signature").setup()
			end,
		},
		{
			"SmiteshP/nvim-navic",
			config = function()
				local navic = require("nvim-navic")
				navic.setup({
					separator = " > ",
					highlight = true,
					depth_limit = 5,
					depth_limit_indicator = "..",
					safe_output = true,
					icons = {
						File = " ",
						Module = " ",
						Namespace = " ",
						Package = " ",
						Class = " ",
						Method = " ",
						Property = " ",
						Field = " ",
						Constructor = " ",
						Enum = "練",
						Interface = "練",
						Function = " ",
						Variable = " ",
						Constant = " ",
						String = " ",
						Number = " ",
						Boolean = "◩ ",
						Array = " ",
						Object = " ",
						Key = " ",
						Null = "ﳠ ",
						EnumMember = " ",
						Struct = " ",
						Event = " ",
						Operator = " ",
						TypeParameter = " ",
					},
				})
			end,
		},
		{
			"j-hui/fidget.nvim",
			config = function()
				local fidget = require("fidget")
				fidget.setup({
					text = {
						spinner = "pipe",
					},
					timer = {
						spinner_rate = 100,
					},
				})
			end,
		},
	},
}
