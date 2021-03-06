#!/bin/sh

CURRENT_DIR="$(pwd)"
FORCE_INSTALL="sudo apt-get --assume-yes --force-yes install"

install_apps() {
  sudo apt-get update;
  
  # General Utilities
  `echo $FORCE_INSTALL` build-essential;
  `echo $FORCE_INSTALL` curl;
  `echo $FORCE_INSTALL` openssh-server;
  `echo $FORCE_INSTALL` openssh-client;
  `echo $FORCE_INSTALL` wget;
  
  # Preferred Utilities
  
  # Development
  
  ## Editors
  `echo $FORCE_INSTALL` emacs;
  install_vim;
  
  ## Tools
  
  install_zsh;
  install_tmux;
  
  # Languages
  install_java;
  # python
  # python3
  # ruby
  # bash
  
  install_rvm
}

install_vim() {
  echo "Installing vim"
  `echo $FORCE_INSTALL` vim;
  # todo: install my .vimrc here (maybe separate repo)
}

install_zsh() {
  echo "Installing zsh"
  `echo $FORCE_INSTALL` zsh;
  # sudo apt-get install zsh-completions;

  # Install oh-my-zsh
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh;
  chsh -s `which zsh`;

  # todo: install my .zshrc here (maybe separate repo)
}

install_tmux() {
  echo "Installing tmux"
  `echo $FORCE_INSTALL` tmux;
  # todo: install my tmux config here (maybe separate repo)
}

install_java() {
  # Install java
  echo "Installing Java"
}

install_rvm() {
  echo "Installing RVM (along with latest ruby and rails)"
  command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
}

install_apps
