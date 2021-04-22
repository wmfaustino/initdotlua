--[[ --------------------------------------------------------------------------
 _ 
| | __ _ _ __   __ _ _   _  __ _  __ _  ___  ___ 
| |/ _` | '_ \ / _` | | | |/ _` |/ _` |/ _ \/ __|
| | (_| | | | | (_| | |_| | (_| | (_| |  __/\__ \
|_|\__,_|_| |_|\__, |\__,_|\__,_|\__, |\___||___/
               |___/             |___/           

==> Supported languages
-----------------------------------------------------------------------------]]
local all_langs = {}

--[[ --- vim --------------------------------------------------------------- ]]
all_langs['vim'] = {
    [ 'filetypes'    ] = { 'vim'        },
    [ 'options'      ] = {
        { 'buffer', 'tabstop'       , 4  }, -- number of spaces a <Tab> in the text stands for
        { 'buffer', 'softtabstop'   , 4  }, -- if non-zero, number of spaces to insert for a <Tab>
        { 'buffer', 'shiftwidth'    , 4  }, -- number of spaces used for each step of (auto)indent
    },
    [ 'variables' ] = {
        { 'global', 'vimsyn_embed'  , 'l'                                 },
    },
    [ 'lsp'          ] = {
        [ 'dependencies' ] = { 'vim-language-server,'                     },
        [ 'server'       ] = { 'vimls'                                    },
    },
    [ 'treesitter'   ] = {                                             },
    [ 'ale'          ] = {
        [ 'ale_linters'  ] = { 'ale_custom_linting_rules', 'vimls'        },
        [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }

    },
}

--[[ --- sh ---------------------------------------------------------------- ]]
all_langs['sh'] = {
    [ 'filetypes'    ] = { 'sh'         },
    [ 'options'      ] = {
        { 'buffer', 'tabstop'       , 4 }, -- number of spaces a <Tab> in the text stands for
        { 'buffer', 'softtabstop'   , 4 }, -- if non-zero, number of spaces to insert for a <Tab>
        { "buffer", "shiftwidth"    , 4 }, -- number of spaces used for each step of (auto)indent
    },
    [ 'variables' ] = {},
    [ 'lsp'          ] = {
        [ 'dependencies' ] = { 'bash-language-server', 'shellcheck', 'shfmt'},
        [ 'server'       ] = { 'bashls'                                     },
    },
    [ 'treesitter'   ] = { 'bash',                                          },
    [ 'ale'          ] = {
        [ 'ale_linters'  ] = { 'language_server', 'shell', 'shellcheck'     },
        [ 'ale_fixers'   ] = {
            'shfmt', 'remove_trailing_lines', 'trim_whitespace'
        }
    },
}

--[[ --- python ------------------------------------------------------------ ]]
all_langs['python'] = {
    [ 'filetypes'    ] = { 'py'         },
    [ 'options'      ] = {
        { 'buffer', 'tabstop'       , 4 }, -- number of spaces a <Tab> in the text stands for
        { 'buffer', 'softtabstop'   , 4 }, -- if non-zero, number of spaces to insert for a <Tab>
        { "buffer", "shiftwidth"    , 4 }, -- number of spaces used for each step of (auto)indent
    },
    [ 'variables' ] = {},
    [ 'lsp'          ] = { 
        [ 'dependencies' ] = { 'pyright', 'flake8'          },
        [ 'server'       ] = { 'pyright'                    },
    },
    [ 'treesitter'   ] = { 'python'                         },
    [ 'ale'          ] = {
        [ 'ale_linters'  ] = { 'pyright', 'flake8'          },
        [ 'ale_fixers'   ] = {
            'add_blank_lines_for_python_control_statements',
            'remove_trailing_lines',
            'trim_whitespace'
        }
    },
}

--[[ --- javascript -------------------------------------------------------- ]]
all_langs['javascript'] = {
    [ 'filetypes'    ] = { 'js', 'ts', 'jsx', 'tsx' },
    [ 'options'      ] = {
        { 'buffer', 'tabstop'       , 2 }, -- number of spaces a <Tab> in the text stands for
        { 'buffer', 'softtabstop'   , 2 }, -- if non-zero, number of spaces to insert for a <Tab>
        { "buffer", "shiftwidth"    , 2 }, -- number of spaces used for each step of (auto)indent
    },
    [ 'variables' ] = {},
    [ 'lsp'          ] = {
        [ 'dependencies' ] = { 'typescript', 'typescript-language-server'    },
        [ 'server'       ] = { 'tsserver'                                    },
    },
    [ 'treesitter'   ] = { 'javascript', 'typescript'                        },
    [ 'ale'          ] = {
        [ 'ale_linters'      ] = { 'tsserver'                                },
        [ 'ale_fixers'       ] = { 'remove_trailing_lines', 'trim_whitespace'}
    }
}

--[[ --- json -------------------------------------------------------- ]]
all_langs['json'] = {
    [ 'filetypes'    ] = { 'json'},
    [ 'options'      ] = {
    --    { 'buffer', 'tabstop'       , 2 }, -- number of spaces a <Tab> in the text stands for
    --    { 'buffer', 'softtabstop'   , 2 }, -- if non-zero, number of spaces to insert for a <Tab>
    --    { "buffer", "shiftwidth"    , 2 }, -- number of spaces used for each step of (auto)indent
   },
    [ 'variables' ] = {},
    [ 'lsp'          ] = {
        [ 'dependencies' ] = { 'vscode-json-languageserver'},
        [ 'server'       ] = { 'jsonls'                                    },
    },
    [ 'treesitter'   ] = { 'json'},
    [ 'ale'          ] = {
        [ 'ale_linters'      ] = { 'jsonlint'                                },
        [ 'ale_fixers'       ] = { 'remove_trailing_lines', 'trim_whitespace'}
    }
}

-------------------------------------------------------------------------------

--[[ --- html -------------------------------------------------------------- ]]
all_langs['html'] = {
    [ 'filetypes'    ] = { 'html'       },
    [ 'options'      ] = {
        { 'buffer', 'tabstop'       , 2 }, -- number of spaces a <Tab> in the text stands for
        { 'buffer', 'softtabstop'   , 2 }, -- if non-zero, number of spaces to insert for a <Tab>
        { "buffer", "shiftwidth"    , 2 }, -- number of spaces used for each step of (auto)indent
    },
    [ 'variables' ] = {},
    [ 'lsp'          ] = {
        [ 'dependencies' ] = { 'vscode-html-languageserver-bin', 'tidy'},
        [ 'server'       ] = { 'html'                                    },
    },
    [ 'treesitter'   ] = { 'html',},
    [ 'ale'          ] = {
        [ 'ale_linters'      ] = { 'tidy'                                },
        [ 'ale_fixers'       ] = { 'remove_trailing_lines', 'trim_whitespace'}
    }
}
--[[ --- css -------------------------------------------------------------- ]]
all_langs['css'] = {
    [ 'filetypes'    ] = { 'css', 'scss', 'less', 'sass'       },
    [ 'options'      ] = {
        { 'buffer', 'tabstop'       , 2 }, -- number of spaces a <Tab> in the text stands for
        { 'buffer', 'softtabstop'   , 2 }, -- if non-zero, number of spaces to insert for a <Tab>
        { "buffer", "shiftwidth"    , 2 }, -- number of spaces used for each step of (auto)indent
    },
    [ 'variables' ] = {},
    [ 'lsp'          ] = {
        [ 'dependencies' ] = { 'stylelint'},
        [ 'server'       ] = { 'cssls'                                    },
    },
    [ 'treesitter'   ] = { 'css',},
    [ 'ale'          ] = {
        [ 'ale_linters'      ] = { 'stylelint'           },
        [ 'ale_fixers'       ] = { 'remove_trailing_lines', 'trim_whitespace'}
    }
}
--[[
Available Linters: ['alex', 'angular', 'fecs', 'htmlhint', 'proselint', 'stylelint
', 'tidy', 'writegood']
Suggested Fixers:
  'fecs' - Apply fecs format to a file.
  'html-beautify' - Fix HTML files with html-beautify.
  'prettier' - Apply prettier to a file.
  'remove_trailing_lines' - Remove all blank lines at the end of a file.
  'tidy' - Fix HTML files with tidy.
  'trim_whitespace' - Remove all trailing whitespace characters at the end of ever
y line.
]]
-------------------------------------------------------------------------------

--[[Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
]]


return all_langs
