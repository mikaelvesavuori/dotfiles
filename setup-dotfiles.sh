echo "Set up dotfiles: Copying them from current working folder to root";

# Root level files
cp config/.zshrc ~/
cp config/.gitignore_global ~/
cp config/.inputrc ~/
cp brew/Brewfile ~/

# Bash dotfiles + Mac OSX settings
mkdir -p ~/.dotfiles/
cp system/.alias ~/.dotfiles/
cp system/.env ~/.dotfiles/
cp system/.functions ~/.dotfiles/
cp macosx/macosdefaults.sh ~/.dotfiles/