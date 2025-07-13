-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  opts = {
    event_handlers = {
      {
        event = 'neo_tree_window_after_open',
        handler = function(args)
          if args.position == 'left' or args.position == 'right' then
            vim.cmd 'setlocal nonumber norelativenumber'
            vim.cmd 'setlocal statuscolumn='
          end
        end,
      },
    },
  },
}
