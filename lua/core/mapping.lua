local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {

    -- Ex mode
    ["|;"] = map_cmd(':'):with_noremap(),
    -- Save and Quit
    ["|<C-q>"] = map_cr('qall'),
    ["|S"] = map_cr('w'):with_noremap(),
    -- Undo
    ["|l"] = map_cmd('u'):with_noremap(),

    ["n|k"] = map_cmd('i'):with_noremap(),
    ["n|K"] = map_cmd('I'):with_noremap(),
    ["v|k"] = map_cmd('i'):with_noremap(),
    ["v|K"] = map_cmd('I'):with_noremap(),
    --[[ Cursor Movement
        ^
        u
    < n   i >
        e
        v
    --]]
    ["|u"] = map_cmd('k'):with_noremap(),
    ["|n"] = map_cmd('h'):with_noremap(),
    ["|e"] = map_cmd('j'):with_noremap(),
    ["|i"] = map_cmd('l'):with_noremap(),
    ["|gu"] = map_cmd('gk'):with_noremap(),
    ["|ge"] = map_cmd('gj'):with_noremap(),
    ["|U"] = map_cmd('5k'):with_noremap(),
    ["|E"] = map_cmd('5j'):with_noremap(),
    ["|N"] = map_cmd('0'):with_noremap(),
    ["|I"] = map_cmd('$'):with_noremap(),
    -- Searching
    ["|<leader><CR>"] = map_cr("nohlsearch"):with_noremap(),
    ["|H"] = map_cmd('N'):with_noremap(),
    ["|h"] = map_cmd('n'):with_noremap(),
    -- Yank and Cut
    ["n|Y"] = map_cmd('y$'),
    ["n|D"] = map_cmd('d$'),
    ["v|Y"] = map_cmd('"+y'),
    -- Go to
    ["|j"] = map_cmd('e'):with_noremap(),
    ["|J"] = map_cmd('E'):with_noremap(),

    -- Vim map
    ["n|<F3>"] = map_cr("set hls!"):with_noremap():with_silent(),
    ["n|<C-x>k"] = map_cr("bdelete"):with_noremap():with_silent(),
    ["n|<C-s>"] = map_cu("write"):with_noremap(),
    ["n|<C-h>"] = map_cmd("<C-w>h"):with_noremap(),
    ["n|<C-l>"] = map_cmd("<C-w>l"):with_noremap(),
    ["n|<C-j>"] = map_cmd("<C-w>j"):with_noremap(),
    ["n|<C-k>"] = map_cmd("<C-w>k"):with_noremap(),
    ["n|<A-[>"] = map_cr("vertical resize -5"):with_silent(),
    ["n|<A-]>"] = map_cr("vertical resize +5"):with_silent(),
    ["n|<A-;>"] = map_cr("resize -2"):with_silent(),
    ["n|<A-'>"] = map_cr("resize +2"):with_silent(),
    ["n|<C-q>"] = map_cmd(":wq<CR>"),
    ["n|<A-q>"] = map_cmd(":bw<CR>"),
    ["n|<A-S-q>"] = map_cmd(":bw!<CR>"),
    ["n|<leader>o"] = map_cr("setlocal spell! spelllang=en_us"),
    -- Insert
    ["i|<C-u>"] = map_cmd("<C-G>u<C-U>"):with_noremap(),
    ["i|<C-b>"] = map_cmd("<Left>"):with_noremap(),
    ["i|<C-a>"] = map_cmd("<ESC>^i"):with_noremap(),
    ["i|<C-s>"] = map_cmd("<Esc>:w<CR>"),
    ["i|<C-q>"] = map_cmd("<Esc>:wq<CR>"),
    -- command line
    ["c|<C-b>"] = map_cmd("<Left>"):with_noremap(),
    ["c|<C-f>"] = map_cmd("<Right>"):with_noremap(),
    ["c|<C-a>"] = map_cmd("<Home>"):with_noremap(),
    ["c|<C-e>"] = map_cmd("<End>"):with_noremap(),
    ["c|<C-d>"] = map_cmd("<Del>"):with_noremap(),
    ["c|<C-h>"] = map_cmd("<BS>"):with_noremap(),
    ["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap(),
}

bind.nvim_load_mapping(def_map)
