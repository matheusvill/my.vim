#! /bin/env nash

PATHOGENDIR = $HOME + "/.vim/bundle"

fn installplugin(name) {
        git clone "https://github.com/" + $name
}

chdir($PATHOGENDIR)

installplugin("godlygeek/tabular")
installplugin("scrooloose/nerdcommenter")
installplugin("tpope/vim-markdown")
installplugin("gcmt/wildfire.vim")
installplugin("majutsushi/tagbar")
installplugin("ntpeters/vim-better-whitespace")
installplugin("ap/vim-buftabline")
installplugin("itchyny/lightline.vim")
installplugin("elzr/vim-json")
installplugin("katcipis/vim-go")
installplugin("LaTeX-Box-Team/LaTeX-Box")
installplugin("moll/vim-node")
installplugin("jelera/vim-javascript-syntax")
installplugin("vim-scripts/JavaScript-Indent")
installplugin("ctrlpvim/ctrlp.vim")
