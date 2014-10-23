Installation:

    git clone https://github.com/canpolat/dotvim.git ~/.vim

Create symlinks (not needed on all systems):

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

**Adding a new plugin:**

    git add submodule https://github.com/bling/vim-airline bundle/vim-airline

**Remomving a plugin:**

    git submodule deinit bundle/module_name
    git rm bundle/module_name

