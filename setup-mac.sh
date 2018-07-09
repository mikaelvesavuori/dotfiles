echo "Setting up Mac with Xcode command-line utilities, Homebrew, Homebrew packages/casks, and dotfiles.";

xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd ..

cd brew

brew bundle

cd ..

sh setup-dotfiles.sh

sh update.sh
