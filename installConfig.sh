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

brew install fish
brew install node
brew install mas
brew install carthage

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

#
# MAS
#

mas signin cflorion@gmail.com

# Copied
mas install 1026349850

# Flexiglass
mas install 426410278

# Kaleidoscope
mas install 587512244

# Xcode
mas install 497799835

# Slack
mas install 803453959

# Clear
mas install 504544917

# Fantastical 2
mas install 975937182

# Mindnode 2
mas install 992076693

# Reeder
mas install 880001334
