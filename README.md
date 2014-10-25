#Installation

    git clone https://github.com/canpolat/dotvim.git ~/.vim
    cd ~/.vim
    git submodule init
    git submodule update

**Adding a new plugin:**

    git submodule add https://github.com/bling/vim-airline bundle/vim-airline

**Removing a plugin:**

    git submodule deinit bundle/module_name
    git rm bundle/module_name

#Branches

* `master`: Without notes plugin
* `with_notes`: With notes plugin writing notes to the Dropbox folder
