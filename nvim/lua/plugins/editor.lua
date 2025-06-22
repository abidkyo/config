-- editor configs
-- neo-tree
-- comment
-- nvim-cmp
-- lsp
-- zig.vim

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      { "<leader>e", "<cmd>Neotree toggle filesystem float<cr>", desc = "NeoTree" },
    },
    deactivate = function()
      vim.cmd("Neotree close")
    end,
    opts = {
      sources = { "filesystem" }, -- no need others
    },
  },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {
      mappings = {
        -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        -- Extra mapping; `gco`, `gcO`, `gcA`
        extra = false,
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    version = false,
    event = { "InsertEnter" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- cmp source buffer
      "hrsh7th/cmp-buffer", -- cmp source buffer
      "hrsh7th/cmp-path", -- cmp source paths
      "L3MON4D3/LuaSnip", -- snippet engine
      "saadparwaiz1/cmp_luasnip", -- snippet autocompletion
      "rafamadriz/friendly-snippets", -- vscode snippets
    },
    config = function()
      local cmp = require("cmp")

      -- load vscode style snippets (friendly-snippets)
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        completion = {
          completeopt = "menu,menuone,preview,noselect",
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(),
          ["<C-j>"] = cmp.mapping.select_next_item(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ft = { "lua", "sh", "c", "cpp", "tex", "bib", "python", "zig" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      { "folke/neodev.nvim", opts = {} }, -- for nvim config, runtime, plugins
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })

      vim.lsp.config("bashls", {
        capabilities = capabilities,
      })

      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })

      vim.lsp.config("ltex", {
        capabilities = capabilities,
      })

      vim.lsp.config("basedpyright", {
        capabilities = capabilities,
        settings = {
          basedpyright = {
            analysis = {
              ignore = { "*" },
            },
          },
        },
      })

      vim.lsp.config("ruff", {})

      vim.lsp.config("zls", {
        capabilities = capabilities,
        settings = {
          zls = {
            enable_build_on_save = false,
          },
        },
      })
    end,
  },
  {
    -- for zls
    "ziglang/zig.vim",
    ft = { "zig" },
    config = function()
      vim.g.zig_fmt_parse_errors = 0
      vim.g.zig_fmt_autosave = 0
    end,
  },
}
