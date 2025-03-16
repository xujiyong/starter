require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local o = vim.o
o.cursorlineopt = 'both' -- to enable cursorline!
-- o.scrolloff = 999 --  keep the currentline around the center of the screen.
o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions" -- save session options, suggested by autosession plugin
o.clipboard = "unnamedplus" -- copy paste between vim and everything else
