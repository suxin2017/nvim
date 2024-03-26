return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      config= {
        header = { 
        '          ▀████▀▄▄              ▄█ ',
        '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
        '    ▄        █          ▀▀▀▀▄  ▄▀  ',
        '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
        '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
        '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
        '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
        '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
        '   █   █  █      ▄▄           ▄▀   ',
         },
        footer = {

        }
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
