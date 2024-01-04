require('dashboard').setup({
    theme = 'doom',
  config = {
      header = {
            [[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
}, --your header
    center = {
      {
        icon = ' ',
        desc = 'Find File           ',
        key_hl = 'Number',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'Telescope find_files'
      },
      {
        icon = ' ',
        desc = 'Last Files',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'Telescope oldfiles'
      },
      {
        icon = ' ',
        desc = 'Change Colorscheme',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'Telescope colorscheme'
      },
    },
    footer = {}  --your footer
  }
})
