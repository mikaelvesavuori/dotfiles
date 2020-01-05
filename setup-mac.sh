echo "Setting up Mac with Xcode command-line utilities, Homebrew, Homebrew packages/casks, Oh My Zsh, and dotfiles.";

# Xcode Command-Line tools
xcode-select --install

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd brew

brew bundle

cd ..

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

sh setup-dotfiles.sh

sh update.sh
