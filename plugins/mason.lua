-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "bashls",
        -- "docker_compose_language_service",
        "dockerls",
        "golangci_lint_ls",
        "gopls",
        "helm_ls",
        "lua_ls",
        "marksman",
        "pyright",
        "solargraph",
        "terraformls",
        "tflint",
        "tsserver",
        "yamlls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "prettier", "stylua", "vale", "yamllint", "hadolint", "ruff" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
