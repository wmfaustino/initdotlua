--[[ --------------------------------------------------------------------------
       _      
  __ _| | ___ 
 / _` | |/ _ \
| (_| | |  __/
 \__,_|_|\___|

==> ale
==> https://github.com/dense-analysis/ale
-----------------------------------------------------------------------------]]

--[[ --- ale global variables ---------------------------------------------- ]]
utils.Variables.set({
    { 'global', 'ale_linters_explicit', 1 }, -- Only run linters named in ale_linters settings.
    { 'global', 'ale_fix_on_save'     , 1 }
})

--[[ --- ale language especific variables ---------------------------------- ]]
--[[

    * ale_linters and ale_fixers are set individually for each language at
after/ftplugin
    * method to set is defined at lua/utils/wrappers/Languages
    * values to set are defined at lua/languages

]]
