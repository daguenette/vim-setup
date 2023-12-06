local lsp_zero = require("lsp-zero")
local mason = require("mason")
local mason_config = require("mason-lspconfig")

lsp_zero.preset("recommended")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

mason.setup({})

mason_config.setup({

	ensure_installed = {
		'lua_ls',
		'rust_analyzer',
	},

	handlers = {
		lsp_zero.default_setup,
	}
})


lsp_zero.set_preferences({
	sign_icons = { }
})
