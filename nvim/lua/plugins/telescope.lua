-- telescope

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function ()
    local actions = require('telescope.actions')
    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,
          },
          -- for normal mode
          n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["q"] = actions.close,
          },
        },
      },
    })

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.git_files, {desc= "Git Files"})
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find Files"})
    vim.keymap.set('n', '<leader>st', builtin.live_grep, {desc = "Search Text"})
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {desc = "Vim Help"})
    vim.keymap.set('n', '<leader>vk', builtin.keymaps, {desc = "Vim Keymaps"})
  end
}

