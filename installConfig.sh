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

sudo softwareupdate --install-rosetta

#
# Brew
#
brew install cask
brew install mas

#
# Gem
#
sudo gem install cocoapods

#
# Cask
#
brew install slack
brew install sublime-text
brew install google-chrome
brew install vlc
brew install tower
brew install postman
brew install visual-studio-code
brew install firefox
brew install motrix
brew install simsim
brew install tadama
brew install gitkraken
brew install homebrew/cask-drivers/logitech-options
brew install macdown
brew install virtualbox
brew install android-studio
brew install nightfall
brew install monitorcontrol
brew install spotify
brew install adobe-creative-cloud
brew install cakebrew
brew install db-browser-for-sqlite
brew install teamviewer
brew install telegram
brew install logitech-options
brew install loom
brew install dashlane
brew install notion
brew install fig

#
# Mac App Store
#
mas install 587512244 # Kaleidoscope
mas install 497799835 # Xcode
mas install 714196447 # MenuBar Stats
mas install 441258766 # Magnet
mas install 1289583905 # Pixelmator Pro
mas install 595191960 # CopyClip
mas install 409203825 # Numbers
mas install 409201541 # Pages
mas install 409183694 # Keynote
mas install 1415817706 # Tadama

#
# Config
#

## FINDER

# Show path in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Finder displays files and folders in column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Pas de création de fichiers .DS_STORE
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Create workspace directory
mkdir ~/workspace

# Set Current Folder as Default Search Scope
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Set Default Finder Location of New Window to Home Folder
defaults write com.apple.finder NewWindowTarget PfHm

# Don't automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Set Auto Show/Hide Delay
# The float number defines the show/hide delay in ms.
defaults write com.apple.dock autohide -bool true
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0;

## CLAVIER ET TRACKPAD

# Accès au clavier complet (tabulation dans les boîtes de dialogue)
sudo defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Key Repeat
# Disable the default "press and hold" behavior.
defaults write -g ApplePressAndHoldEnabled -bool false

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

# Allow apps from anywhere
sudo spctl --master-disable

# End
killall Dock
killall Finder
sudo reboot
