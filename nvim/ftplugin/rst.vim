packadd vim-lexical
packadd vim-pencil

call lexical#init()
call pencil#init({'wrap': 'hard'})

lua require 'plugins.tree_sitter'

let b:undo_ftplugin = "setl com< cms< et< fo<"
setlocal comments=fb:.. commentstring=..\ %s expandtab
setlocal formatoptions+=tcroql

setlocal expandtab shiftwidth=3 softtabstop=3 tabstop=8