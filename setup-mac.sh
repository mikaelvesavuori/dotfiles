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
# Get latest version number from: https://cloud.google.com/sdk/docs/install
#sudo curl "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-340.0.0-darwin-x86_64.tar.gz" -o "gcloud.zip" # <-- Intel
sudo curl "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-340.0.0-darwin-arm.tar.gz" -o "gcloud.zip"     # <-- ARM (M1)
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

# Install Fira Code font
echo "(Dotfiles installer) Installing Fira Code font..."
mkdir fira-code
cd fira-code
curl https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip -o fira-code.zip -s -L
unzip fira-code.zip
cp ttf/*.ttf ~/Library/Fonts/
cd ..
rm -rf fira-code

# Install regular Fira font (OTF version)
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
