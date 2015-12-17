#!/bin/sh

CURRENT_DIR="$(pwd)"

install_apps() {
  sudo apt-get update;
  force_install="sudo apt-get --assume-yes --force-yes install"
  
  # General Utilities
  `echo $force_install` build-essential;
  `echo $force_install` curl;
  `echo $force_install` wget;
  
  # Preferred Utilities
  
  # Development
  
  ## Editors
  sudo apt-get install emacs;
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
  sudo apt-get install vim;
  # todo: install my .vimrc here (maybe separate repo)
}

install_zsh() {
  sudo apt-get install zsh;
  # sudo apt-get install zsh-completions;

  # Install oh-my-zsh
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh;
  chsh -s /bin/zsh;

  # todo: install my .zshrc here (maybe separate repo)
}

install_tmux() {
  sudo apt-get install tmux;
  # todo: install my tmux config here (maybe separate repo)
}

install_java() {
  # Install java
}

install_rvm() {
  echo "Installing RVM (along with latest ruby and rails)"
  curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
}

install_apps
