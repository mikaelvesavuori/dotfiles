# Update App Store apps
sudo softwareupdate -i -a

# Update npm global packages
npm update -g

# Update Homebrew (Cask) & packages
brew cleanup
brew update
brew upgrade

# Update gcloud CLI
gcloud components update