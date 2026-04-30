return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup()

    mason_tool_installer.setup({
      ensure_installed = {
        -- lsp servers (mason package names)
        "typescript-language-server", -- ts_ls
        "html-lsp",                   -- html
        "css-lsp",                    -- cssls
        "tailwindcss-language-server",-- tailwindcss
        "svelte-language-server",     -- svelte
        "lua-language-server",        -- lua_ls
        "graphql-language-service-cli", -- graphql
        "emmet-ls",                   -- emmet_ls
        "prisma-language-server",     -- prismals
        "pyright",
        -- formatters & linters
        "prettier",
        "stylua",
        "isort",
        "black",
        "pylint",
        "eslint_d",
      },
    })
  end,
}
