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

## FINDER

# Affichage de la bibliothèque
chflags nohidden ~/Library

# Show path in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Install Command Line Tools without Xcode
xcode-select --install

# Finder displays files and folders in column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Pas de création de fichiers .DS_STORE
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Mot de passe demandé immédiatement quand l'économiseur d'écran s'active
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Create workspace directory
mkdir ~/workspace

# Set Current Folder as Default Search Scope
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Set Default Finder Location of New Window to Home Folder
defaults write com.apple.finder NewWindowTarget PfHm

# Don't automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Hot corners
# https://github.com/ymendel/dotfiles/blob/master/osx/corners.defaults
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tr-corner -int 4

# Set Auto Show/Hide Delay
# The float number defines the show/hide delay in ms.
defaults write com.apple.dock autohide -bool true
defaults write com.apple.Dock autohide-delay -float 0

# Autohide dock without animation
defaults write com.apple.dock autohide-time-modifier -float 0; killall Dock

## CLAVIER ET TRACKPAD

# Accès au clavier complet (tabulation dans les boîtes de dialogue)
sudo defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Key Repeat
# Disable the default "press and hold" behavior.
defaults write -g ApplePressAndHoldEnabled -bool false

# Key Repeat Rate
# Sets a very fast repeat rate, adjust to taste.
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Réglages Trackpad : toucher pour cliquer
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Cleanup
brew cleanup
rm -f -r /Library/Caches/Homebrew/*

# End
killall Dock
killall Finder
sudo reboot
