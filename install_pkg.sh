#!/bin/bash

# update
sudo aptitude update

#-----------------------------
# Shell
#-----------------------------
sudo aptitude -y install zsh

#-----------------------------
# Build Tool
#-----------------------------
# build-essential
sudo aptitude -y install build-essential
# llvm clang
sudo aptitude -y install llvm clang
# cmake
sudo aptitude -y install cmake
# automake autoconf m4
sudo aptitude -y install automake autoconf m4
# omake
sudo aptitude -y install omake

#-----------------------------
# RCS
#-----------------------------
# git client( tig )
sudo aptitude -y install tig
# subversion
sudo aptitude -y install subversion
# CVS
sudo aptitude -y install cvs
# mercurial
sudo aptitude -y install mercurial

#-----------------------------
# Debugger
#-----------------------------
# gdb gdb-server
sudo aptitude -y install gdb gdb-server
# cgdb
sudo aptitude -y install cgdb
# valgrind
sudo aptitude -y install valgrind
# ltrace strace kmtrace
sudo aptitude -y install ltrace ctrace kmtrace

#-----------------------------
# Editor
#-----------------------------
# vim gvim ( Disable -- use install_vim.sh )
# sudo aptitude -y install vim gvim

#-----------------------------
# Code search(Taggin)
#-----------------------------
# exuberant-ctags
sudo aptitude -y install exuberant-ctags 
# cscope
sudo aptitude -y install cscope
# GNU Global
sudo aptitude -y install global
# ack-grep
sudo aptitude -y install ack-grep
# silver-searcher
sudo aptitude -y install silversearcher-ag

#-----------------------------
# Code Style
#-----------------------------
# astyle
sudo aptitude -y install astyle

#-----------------------------
# Documention
#-----------------------------
# graphviz
sudo aptitude -y install graphviz
# Doxygen
sudo aptitude -y install doxygen

#-----------------------------
# Utility Tool
#-----------------------------
# autojump
sudo aptitude -y install autojump
# w3m
sudo aptitude -y install w3m
# nkf
sudo aptitude -y install nkf
# Gnu parallel
sudo aptitude -y install parallel

#-----------------------------
# Terminal Tool
#-----------------------------
sudo aptitude -y install tmux

#-----------------------------
# Source Code Package Management Tool
#-----------------------------
# paco
readonly WORK_PACO_TMPDIR="/tmp/work/paco"
mkdir -p $WORK_PACO_TMPDIR
cd $WORK_PACO_TMPDIR
wget http://sourceforge.net/projects/paco/files/paco/2.0.9/paco-2.0.9.tar.gz
tar zxvf paco-2.0.9.tar.gz
cd paco-2.0.9
./configure --prefix=/usr --disable-gpaco
make
sudo make install
sudo make logme

#-----------------------------
# TBD Other 
#-----------------------------
# See Static Code analysis :
#    http://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis#C.2FC.2B.2B 
#
