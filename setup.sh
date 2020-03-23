 #!/bin/bash

  DOT_FILES=(.gitignore_global .vimrc  .bashrc .bash_profile .zprofile .zshrc)

 for file in ${DOT_FILES[@]}
 do
     ln -s $HOME/dotfiles/$file $HOME/$file
 done

