Installation:

    git clone https://github.com/canpolat/dotvim.git ~/.vim
    cd ~/.vim
    git submodule init
    git submodule update

**Adding a new plugin:**

    git submodule add https://github.com/bling/vim-airline bundle/vim-airline

**Remomving a plugin:**

    git submodule deinit bundle/module_name
    git rm bundle/module_name

