require('vgit').setup({
  signs = {
    priority = 10,
    definitions = {
      GitSignsAddLn = {
        linehl = 'GitSignsAddLn',
        texthl = nil,
        numhl = nil,
        icon = nil,
        text = '',
      },
      GitSignsDeleteLn = {
        linehl = 'GitSignsDeleteLn',
        texthl = nil,
        numhl = nil,
        icon = nil,
        text = '',
      },
      GitSignsAdd = {
        texthl = 'GitSignsAdd',
        numhl = nil,
        icon = '+',
        linehl = nil,
        text = '+',
      },
      GitSignsDelete = {
        texthl = 'GitSignsDelete',
        numhl = nil,
        icon = nil,
        linehl = nil,
        text = '-',
      },
      GitSignsChange = {
        texthl = 'GitSignsChange',
        numhl = nil,
        icon = nil,
        linehl = nil,
        text = '~',
      },
    },
  },
  usage = {
    screen = {
      add = 'GitSignsAddLn',
      remove = 'GitSignsDeleteLn',
    },
  }
})
