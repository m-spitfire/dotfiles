local nvim_lsp = require 'lspconfig'
local lsp_status = require 'lsp-status'
lsp_status.register_progress()

local telescope = function(picker)
	return string.format("<cmd> lua require('telescope.builtin').%s()<CR>", picker)
end

local on_attach = function(_, bufnr)
	local filetype = vim.opt.filetype:get()
	local mapper = function(mode, key, result)
		vim.api.nvim_buf_set_keymap(bufnr, mode, key, result, { noremap = true, silent = true })
	end

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	mapper('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
	mapper('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>')
	mapper('n', 'gD', '<cmd>lua vim.lsp.buf.definition()<CR>')
	mapper('n', 'gr', telescope('lsp_references'))
	mapper('n', 'gw', telescope('lsp_document_symbols'))
	mapper('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
	mapper('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
	mapper('n', 'gW', telescope('lsp_workspace_symbols'))
	mapper('n', '<leader>ca', telescope('lsp_code_actions'))
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
	mapper('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
  mapper('n', '<leader>d', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
  mapper('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
  mapper('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
  mapper('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
  mapper('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
  mapper('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
  mapper('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
  mapper('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')

	if filetype == 'rust' then
		vim.cmd [[autocmd BufWritePre <buffer> :lua vim.lsp.buf.formatting_sync()]]
	end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.rust_analyzer.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		['rust-analyzer'] = {
			cargo = { allFeatures = true, autoReload = true },
			checkOnSave = {
				enable = true, command = "clippy",
			},
			hoverActions = {
				linksInHover = false
			}
		}
	}
}
local servers = { 'clangd', 'texlab', 'tsserver'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

nvim_lsp.pyright.setup{
	cmd = { "pyright-langserver", "--stdio" },
	on_attach = on_attach,
	capabilities = capabilities
}
nvim_lsp.sumneko_lua.setup{
	cmd = {"lua-language-server"},
	settings = {
		Lua = {
			diagnostics = { globals = {"vim"} },
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = {
					[vim.fn.expand('$VIMRUNTIME/lua')] = true,
					[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
				}
			},
			telemetry = { enable = false },
		}
	},
	on_attach = on_attach,
	capabilities = capabilities
}

local efm = {
	flake8 = {
		lintCommand = "flake8 --stdin-display-name ${INPUT} -",
		lintIgnoreExitCode = true,
		lintStdin = true,
		lintFormats = { "%f:%l:%c: %m" },
		rootMarkers = { "setup.cfg", "tox.ini", ".flake8" },
	},
	shellcheck = {
		lintCommand = "shellcheck -f gcc -x",
		lintStdin = true,
		lintFormats = "%f:%l:%c: %t%*[^:]: %m [SC%n]",
	}
}
nvim_lsp.efm.setup {
	settings = {
		lintDebounce = 1000000000,
		languages = {
			python = { efm.flake8 },
			sh = { efm.shellcheck },
		}
	}
}

-- Diagnostics
vim.fn.sign_define("LspDiagnosticsSignError", { text = "", numhl = "LspDiagnosticsSignError" })
vim.fn.sign_define("LspDiagnosticsSignWarning", { text = "", numhl = "LspDiagnosticsSignWarning" })
vim.fn.sign_define(
    "LspDiagnosticsSignInformation", { text = "", numhl = "LspDiagnosticsSignInformation" }
)
vim.fn.sign_define("LspDiagnosticsSignHint", { text = "", numhl = "LspDiagnosticsSignHint" })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)
