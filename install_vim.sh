#!/bin/sh

readonly WORK_DIR="/tmp/work/vim"
readonly PREFIX="/usr/local"
readonly PKG_NAME="vim-7.4"

# install ncurses
sudo aptitude install -y libncurses5-dev

# Get vim source
mkdir -p $WORK_DIR
hg clone https://vim.googlecode.com/hg/ $WORK_DIR

#----------------------------------
# Get Dependences source package
#----------------------------------
# Enable Lua
sudo aptitude -y install luajit lua5.2 liblua5.2-dev

## Enable Python
sudo aptitude -y install python-dev python3-dev

## Enable ruby
sudo aptitude -y install ruby-dev

## Enable perl
sudo aptitude -y install libperl-dev

## Tcl
sudo aptitude -y install tcl-dev

## Scheme
### Disable ( Warning System Call  ( some thread has SIGCHLD unblocked  ) ) 
#sudo aptitude -y install plt-scheme

## Enable GVim
sudo aptitude -y install xorg-dev libgtk2.0-dev libxmu-dev libgnomeui-dev libxpm-dev
#
##----------------------------------
# Compile Vim 
#----------------------------------
cd $WORK_DIR

./configure \
--prefix=$PREFIX \
--with-features=huge \
--enable-multibyte \
--enable-xim \
--enable-rubyinterp \
--enable-python3interp \
--enable-gui=gtk2 \
--enable-luainterp \
--with-lua-prefix=/usr \
--enable-perlinterp \
--enable-tclinterp \
--enable-gpm \
--enable-cscope \
--enable-fontset \
--enable-fail-if-missing

sudo paco -lp $PKG_NAME "make install"

