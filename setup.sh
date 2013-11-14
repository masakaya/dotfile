#!/bin/bash
readonly DOT_FILES_ROOT="dotfile"
readonly DOT_FILES=( .vim .zsh .vimrc .zshrc .clang_complate .gitconfig )

for file in ${DOT_FILES[@]}
do
    rm -rf $HOME/$file
    ln -sf $DOT_FILES_ROOT/$file $HOME/$file
done

