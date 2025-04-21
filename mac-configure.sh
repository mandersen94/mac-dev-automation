#!/usr/bin/env zsh

xcode-select --install

echo "Complete the installation of Xcode Command Line Tools before proceeding.  You may have already done this."
#echo "Press enter to continue..."
#read

# Set scroll as traditional instead of natural
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false


# Add Bluetooth to Menu Bar for battery percentages
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true

# # Get the absolute path to the image
# IMAGE_PATH="${HOME}/dotfiles/settings/Desktop.png"

# # AppleScript command to set the desktop background
# osascript <<EOF
# tell application "System Events"
#     set desktopCount to count of desktops
#     repeat with desktopNumber from 1 to desktopCount
#         tell desktop desktopNumber
#             set picture to "$IMAGE_PATH"
#         end tell
#     end repeat
# end tell



defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
defaults write NSGlobalDomain AppleMenuBarVisibleInFullscreen -int 1
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
defaults write com.apple.desktopservices DSDontWriteNetworkStores TRUE

#Dock
defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.dock "tilesize" -int 20
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "static-only" -bool "true"


#screenshots
defaults write com.apple.screencapture "include-date" -bool "true"
defaults write com.apple.screencapture "type" -string "jpg"
# Set location for screenshots
mkdir -p "${HOME}/Downloads/screenshots"
defaults write com.apple.screencapture location "${HOME}/Downloads/screenshots"

#safari
sudo defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true" 
sudo defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
sudo defaults write com.apple.Safari ShowFavoritesBar -bool true
sudo defaults write com.apple.Safari IncludeDevelopMenu -bool true
sudo defaults write com.apple.Safari ShowOverlayStatusBar -bool true

#xcode
defaults write com.apple.dt.Xcode DVTTextShowLineNumbers -bool true
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool true


#finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true" 
defaults write com.apple.Finder FXPreferredViewStyle clmv
defaults write com.apple.finder CreateDesktop false
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" 
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCev"
defaults write com.apple.finder QLEnableTextSelection -bool TRUE
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
sudo defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "false"

defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "true" 
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false"
defaults write NSGlobalDomain com.apple.mouse.scaling -float "1.5"
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true
defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"

#Messages
sudo defaults write com.apple.MobileSMS "MMSShowSubject" -bool "false" 
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "false"

killall Safari 2> /dev/null
killall Music 2> /dev/null
killall Messages 2> /dev/null
killall SystemUIServer 2> /dev/null
killall Finder 2> /dev/null
killall Dock 2> /dev/null
killall XCode 2> /dev/null
killall ControlCenter 2> /dev/null
