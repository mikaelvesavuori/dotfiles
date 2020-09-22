echo "(Dotfiles installer) Setting up Mac with Xcode command-line utilities, Homebrew, Homebrew packages/casks, Oh My Zsh, and dotfiles."

cd ~

# Xcode Command-Line tools
echo "(Dotfiles installer) Installing Xcode..."
xcode-select --install

# Install Oh My Zsh
echo "(Dotfiles installer) Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check for Homebrew, install if we don't have it
echo "(Dotfiles installer) Installing Homebrew..."
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install homebrew bundle
echo "(Dotfiles installer) Tapping Homebrew..."
cd dotfiles
cd brew
brew bundle
cd ..

# Serverless Framework and Typescript through NPM
echo "(Dotfiles installer) Installing Serverless Framework and Typescript globally through NPM..."
npm install -g serverless typescript

# AWS CLI v2
echo "(Dotfiles installer) Installing AWS CLI v2..."
cd ~
sudo curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
sudo rm AWSCLIV2.pkg

# GCP gcloud CLI (reference: https://cloud.google.com/sdk/docs/quickstart-macos)
echo "(Dotfiles installer) Installing Google Cloud Platform gcloud CLI..."
cd ~
sudo curl "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-304.0.0-darwin-x86_64.tar.gz" -o "gcloud.zip"
./google-cloud-sdk/install.sh
gcloud components update
rm gcloud.zip

# Install Powerline fonts
echo "(Dotfiles installer) Installing Powerline fonts..."
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install Fira font (OTF version)
echo "(Dotfiles installer) Installing Fira font..."
git clone https://github.com/mozilla/Fira.git --depth=1
cp Fira/otf/*.otf ~/Library/Fonts/
rm -rf Fira

# Start laying out the dotfiles on the system
echo "(Dotfiles installer) Laying out the dotfiles on your system..."
cd dotfiles
sh setup-dotfiles.sh

# Update system
echo "(Dotfiles installer) Updating..."
sh update.sh

# Run zsh compaudit
echo "(Dotfiles installer) Zsh compaudit/compinit..."
compaudit
compinit -i

echo "(Dotfiles installer) Done!"