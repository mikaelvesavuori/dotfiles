# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.Dock autohide-delay -float 0; killall Dock

# Save screenshots to the desktop
# defaults write com.apple.screencapture location -string “$HOME/Desktop”

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
# defaults write com.apple.screencapture type -string “PNG”

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=” “
