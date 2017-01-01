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
brew install node

#
# Gem
#
gem install bundler
sudo gem install cocoapods

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

#
# Config
#

# Install Command Line Tools without Xcode
xcode-select --install

# Set Auto Show/Hide Delay
# The float number defines the show/hide delay in ms.
defaults write com.apple.Dock autohide-delay -float 0 && \
killall Dock

# Key Repeat
# Disable the default "press and hold" behavior.
defaults write -g ApplePressAndHoldEnabled -bool false

# Autohide dock without animation
defaults write com.apple.dock autohide-time-modifier -float 0; killall Dock

# Key Repeat Rate
# Sets a very fast repeat rate, adjust to taste.
defaults write -g KeyRepeat -int 2

# Create workspace directory
mkdir ~/workspace

# Set Current Folder as Default Search Scope
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Set Default Finder Location of New Window to Home Folder
defaults write com.apple.finder NewWindowTarget PfHm

# Hot corners
# https://github.com/ymendel/dotfiles/blob/master/osx/corners.defaults
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tr-corner -int 4
# Reboot
sudo reboot
