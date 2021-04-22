--[[ --------------------------------------------------------------------------
_                          _      _   _                              _ 
  ___ ___  _ __ ___  _ __ | | ___| |_(_) ___  _ __        _ ____   _(_) _ __ ___  
 / __/ _ \| '_ ` _ \| '_ \| |/ _ \ __| |/ _ \| '_ \ _____| '_ \ \ / / || '_ ` _ \ 
| (_| (_) | | | | | | |_) | |  __/ |_| | (_) | | | |_____| | | \ V /| || | | | | |
 \___\___/|_| |_| |_| .__/|_|\___|\__|_|\___/|_| |_|     |_| |_|\_/ |_||_| |_| |_|
_                   |_|                                                
_
==> completion-nvim config
==> https://github.com/nvim-lua/completion-nvim
-----------------------------------------------------------------------------]]

--[[ --- nvim-completion autocommands -------------------------------------- ]]
local on_attach = require'completion'.on_attach

utils.Lsp.on_attach(on_attach)

--[[ --- nvim-completion variables ----------------------------------------- ]]
utils.Variables.set({

    -- By default auto popup is enabled,
    { 'global', 'completion_enable_auto_popup'     , 1            },

    -- possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
    { 'global', 'completion_enable_snippet'        , 'Neosnippet' },
    
    -- Chain Completion
    { 'global', 'completion_chain_complete_list'   , {
        [ 'complete_items' ] = {'lsp', 'snippet'},
        [ 'mode' ] = '<C-p>',
        [ 'mode' ] = '<C-n>'
        }
    },

    { 'global', "completion_auto_change_source"    , 1            },
    
    { 'global', "completion_confirm_key"           , "<C-y>"      },
    
    --possible values: ['exact', 'substring', 'fuzzy', 'all']
    { 'global', "completion_matching_strategy_list", {
        'exact', 'substring', 'fuzzy'
        }
    },
    
    { 'global', "completion_matching_smart_case"   , 1            },
})

--[[ --- nvim-completion settings ------------------------------------------ ]]
utils.Options.set({

    -- Set completeopt to have a better completion experience
    { 'global', 'completeopt', 'menuone,noinsert,noselect' },

    --[[
        Avoid showing message extra message when using completion
        Don't pass messages to ins-completion-menu
      ]]
    { 'global', 'shortmess'  , vim.o.shortmess .. 'c'      },
})

--[[ --- nvim-completion keybindings --------------------------------------- ]]

local opts   = { noremap = true, expr = true }
local silent = { silent  = true }

utils.Keymaps.set({

    -- Use <Tab> and <S-Tab> to navigate through popup menu
    { 'global', 'i', '<tab>'  , 'pumvisible() ? "<C-n>" : "<tab>"', opts   },
    { 'global', 'i', '<S-tab>', 'pumvisible() ? "<C-p>" : "<tab>"', opts   },
       
    -- popup trigger --

    -- use <Tab> as trigger keys
    { 'global', 'i', '<tab>'  , '<Plug>(completion_smart_tab)'    , {  }   },
    { 'global', 'i', '<S-tab>', '<Plug>(completion_smart_s_tab)'  , {  }   },

    -- use map <c-p> to manually trigger completion
    { 'global', 'i', '<C-p>'  , '<Plug>(completion_trigger)'      , silent },
})
