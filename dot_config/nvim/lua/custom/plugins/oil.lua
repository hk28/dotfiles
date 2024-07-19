return {
  'stevearc/oil.nvim',
  cmd = 'Oil',
  --event = { 'VimEnter */*,.*', 'BufNew */*,.*' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  -- config = function()
  --   require('oil').setup()
  -- end,
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
      is_alway_hidden = function(name, _)
        return name == '.git' or name == '.github'
      end,
    },
  },
  keys = {
    {
      '-',
      '<cmd>Oil<cr>',
      mode = { 'n' },
      desc = 'Open parent dir',
    },
  },
}
