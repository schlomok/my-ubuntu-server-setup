#!/bin/sh

PROJECT_NAME="my-ubuntu-server-setup"
PROJECT_AUTHOR="schlomok"
CURRENT_DIR="$(pwd)"

install() {
  echo "Installing [$PROJECT_NAME] by $PROJECT_AUTHOR..."
  echo "Directory: $CURRENT_DIR" 
  ./install-apps.sh 
  
  echo "Installing dotfiles"
  sh -c "$(curl https://raw.githubusercontent.com/schlomok/dotfiles/master/install.sh)"
  
  exit 0
}

install
