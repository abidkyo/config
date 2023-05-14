-- dartls setup
local util = require "lspconfig/util"

local opts = {
  cmd = { "dart", "language-server", "--protocol=lsp" },
  filetypes = { "dart" },
  root_dir = util.root_pattern "pubspec.yaml",
  init_options = {
    closingLabels = true,
    flutterOutline = true,
    outline = true,
    onlyAnalyzeProjectsWithOpenFiles = true,
    suggestFromUnimportedLibraries = true,
  },
  settings = {
    dart = {
      completeFunctionCalls = true,
      showTodos = true,
      renameFilesWithClasses = "prompt",
      enableSnippets = true,
      updateImportsOnRename = true,
    },
  },
  --   docs = {
  --     description = [[
  -- https://github.com/dart-lang/sdk/tree/master/pkg/analysis_server/tool/lsp_spec

  -- Language server for dart.
  -- ]],
  --     default_config = {
  --       root_dir = [[root_pattern("pubspec.yaml")]],
  --     },
  --   },
}

require("lvim.lsp.manager").setup("dartls", opts)
