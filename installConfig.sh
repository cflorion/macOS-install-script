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
brew cask install sublime-text
brew cask install google-chrome
brew cask install vlc
brew cask install tower
brew cask install sketch
brew cask install postman
brew cask install visual-studio-code
brew cask install yt-music
brew cask install firefox
brew cask install motrix
brew cask install simsim
brew cask install tadama
brew cask install zenmate-vpn
brew cask install gitkraken

#
# MAS
#
mas signin cflorion@gmail.com
mas install 1026349850 # 

mas install 587512244 # Kaleidoscope
mas install 497799835 # Xcode
mas install 714196447 # MenuBar Stats
mas install 1026349850 # Copied
mas install 595191960 # Copy Clip History
mas install 441258766 # Magnet
mas install 1289583905 # Pixelmator Pro
mas install 1415817706 # Tadama
mas install 1176895641 # Spark

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
# defaults write -g ApplePressAndHoldEnabled -bool false

# Key Repeat Rate
# Sets a very fast repeat rate, adjust to taste.
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

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
