#!/bin/sh

#
# Install HomeBrew
#
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

#
# Brew
#
brew install cask
brew install mas
brew install fish
brew install node
brew install carthage
brew install rbenv

#
# Gem
#
gem install bundler

#
# Cask
#
brew cask install dropbox
brew cask install sublime-text
brew cask install alfred
brew cask install google-chrome
brew cask install vlc
brew cask install utorrent
brew cask install tower
brew cask install spotify
brew cask install slack
brew cask install sketch
brew cask install postman
brew cask install google-drive
brew cask install flux
brew cask install flash-player
brew cask install macdown
brew cask install subl
brew cask install iterm2
brew cask install molotov

#
# MAS
#
mas signin cflorion@gmail.com
mas install 1026349850 # Copied
mas install 426410278 # Flexiglass
mas install 587512244 # Kaleidoscope
mas install 497799835 # Xcode
mas install 803453959 # Slack
mas install 504544917 # Clear
mas install 975937182 # Fantastical 2
mas install 992076693 # Mindnode 2
mas install 880001334 # Reeder
mas install 1176895641 # Cask
mas install 714196447 # MenuBar Stats
