--[[ --------------------------------------------------------------------------
 _              _     _           _ _                 
| | _____ _   _| |__ (_)_ __   __| (_)_ __   __ _ ___ 
| |/ / _ \ | | | '_ \| | '_ \ / _` | | '_ \ / _` / __|
|   <  __/ |_| | |_) | | | | | (_| | | | | | (_| \__ \
|_|\_\___|\__, |_.__/|_|_| |_|\__,_|_|_| |_|\__, |___/
          |___/                             |___/     
-----------------------------------------------------------------------------]]

local opts = { noremap = true }

utils.Keymaps.set({

    { 'global', 'n', '<leader>;' ,'A;<esc>'                , opts },
    { 'buffer', 0  , 'i'         , '<C-o>'     , '<esc>o'  , {  } },

    --[[ --- move visually lines up or down -------------------------------- ]]
    { 'global', 'n', '<C-k>'     ,':m .-2<CR>=='           , opts },
    { 'global', 'n', '<C-j>'     ,':m .+1<CR>=='           , opts },
    -- C-k in visual mode conflicts with lsp-config
    -- { 'global', 'v', '<C-k>'     ,":m '<-2<CR>gv=gv"       , opts },
    -- { 'global', 'v', '<C-j>'     ,":m '>+1<CR>gv=gv"       , opts },

    --[[ --- split navigation ---------------------------------------------- ]]
    { 'global', 'n', '<leader>h' ,':wincmd h<CR>'          , opts },
    { 'global', 'n', '<leader>j' ,':wincmd j<CR>'          , opts },
    { 'global', 'n', '<leader>k' ,':wincmd k<CR>'          , opts },
    { 'global', 'n', '<leader>l' ,':wincmd l<CR>'          , opts },
    
    --[[ --- split resize -------------------------------------------------- ]]
    { 'global', 'n', '<C-Up>'    ,':vertical resize +3<CR>', opts },
    { 'global', 'n', '<C-down>'  ,':vertical resize -3<CR>', opts },
    { 'global', 'v', '<C-Up>'    ,':vertical resize +3<CR>', opts },
    { 'global', 'v', '<C-Down>'  ,':vertical resize -3<CR>', opts },
})
