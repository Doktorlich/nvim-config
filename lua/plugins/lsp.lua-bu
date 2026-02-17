   -- в Mason отключить X tsserver(typescript-language-server) и включить vtsls через i
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          -- ДОБАВЛЯЕМ ЭТОТ БЛОК ДЛЯ ИСПРАВЛЕНИЯ ОШИБОК В ЛОГАХ
          handlers = {
            ["workspace/diagnostic/refresh"] = function() return {} end,
            ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
              return vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
            end,
          },
          settings = {
            vtsls = {
              autoUseWorkspaceTsdk = true,
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                  entriesLimit = 100,
                },
              },
            },
            typescript = {
              preferences = {
                importModuleSpecifierPreference = "non-relative",
                quotePreference = "single",
                importModuleSpecifierEnding = "js", 
                includeCompletionsForImportStatements = true,
                includeCompletionsWithSnippetText = true,
              },
              suggest = {
                autoImports = true,
                includeCompletionsForModuleExports = true,
                includePackageJsonAutoImports = "on",
                completeFunctionCalls = true,
              },
              updateImportsOnFileMove = { enabled = "always" },
              inlayHints = {
                parameterNames = { enabled = "all" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
            javascript = {
              preferences = {
                importModuleSpecifierPreference = "non-relative",
                quotePreference = "single",
              },
              suggest = {
                autoImports = true,
                includeCompletionsForModuleExports = true,
                includePackageJsonAutoImports = "on",
              },
              inlayHints = {
                parameterNames = { enabled = "all" },
                parameterTypes = { enabled = true },
              },
            },
          },
        },
        html = { filetypes = { "html", "javascriptreact", "typescriptreact" } },
        cssls = {},
        emmet_ls = {
          filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
        },
      },
    },
  },
}

