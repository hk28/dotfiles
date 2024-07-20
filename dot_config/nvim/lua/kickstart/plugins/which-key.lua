-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    -- version = '2.1.0',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()
      local wk = require 'which-key'
      wk.add { --register { -- add for 3.x
        { '<leader>u', group = 'ui' },
        { '<leader>b', group = 'buffer' },
        { '<leader>c', group = 'code' },
        { '<leader>g', group = 'git' },
        { '<leader>h', group = 'git hunk' },
        { '<leader>d', group = 'diag/quickfix' },
        { '<leader>t', group = 'terminal' },
        { '<leader>ut', '<cmd>TransparentToggle<cr>', desc = 'Toggle transparent bg', mode = 'n' },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
