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

# Install homebrew bundle
cd brew
brew bundle
cd ..

# Serverless Framework
npm install -g serverless

# AWS CLI v2
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

# GCP gcloud CLI (reference: https://cloud.google.com/sdk/docs/quickstart-macos)
cd ~
curl "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-304.0.0-darwin-x86_64.tar.gz" -o "gcloud.zip"
./google-cloud-sdk/install.sh
gcloud components update

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Start laying out the dotfiles on the system
sh setup-dotfiles.sh

# Update system
sh update.sh
