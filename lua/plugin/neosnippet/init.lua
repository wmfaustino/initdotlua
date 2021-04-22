--[[ --------------------------------------------------------------------------
                            _                  _   
 _ __   ___  ___  ___ _ __ (_)_ __  _ __   ___| |_ 
| '_ \ / _ \/ _ \/ __| '_ \| | '_ \| '_ \ / _ \ __|
| | | |  __/ (_) \__ \ | | | | |_) | |_) |  __/ |_ 
|_| |_|\___|\___/|___/_| |_|_| .__/| .__/ \___|\__|
                             |_|   |_|             

==> neosnippet.vim config
==> https://github.com/Shougo/neosnippet.vim
-----------------------------------------------------------------------------]]

--[[ --- neosnippet variables ---------------------------------------------- ]]

--[[ utils.Variables.set({
	"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
	{  }
})]]

--[[ --- neosnippet settings ----------------------------------------------- ]]
if vim.fn.has('conceal') == 1 then

    utils.Options.set({
        { "window", "conceallevel" , 2     },
        { "window", "concealcursor", "niv" },
    })
end

--[[ --- neosnippet keybindings -------------------------------------------- ]]
utils.Keymaps.set({

    -- Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    { 'global','i', '<C-k>', '<Plug>(neosnippet_expand_or_jump)'  , {  } },
    { 'global','s', '<C-k>', '<Plug>(neosnippet_expand_or_jump)'  , {  } },
    { 'global','x', '<C-k>', '<Plug>(neosnippet_expand_or_target)', {  } },
    
    -- SuperTab like snippets behavior.
    -- {'global', 'i', '<TAB>', 'pumvisible() ? "<C-n>" : neosnippet#expandable_or_jumpable() ?',  '"<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"', { expr = true }},
    -- {'global', 's', '<TAB>', 'neosnippet#expandable_or_jumpable() ?', '"<Plug>(neosnippet_expand_or_jump)" : "<TAB>"', { expr = true }}
})
