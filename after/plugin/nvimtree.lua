local opts = {}
opts.actions = {}
opts.actions.open_file = {}
opts.actions.open_file.quit_on_open = true
require('nvim-tree').setup(opts)
