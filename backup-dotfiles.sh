echo "Backing up root level dotfiles: Copying them from root to current working folder";

mkdir -p ~/.dotfiles/root-backup/
cp ~/{.zshrc,.bashrc,.gitignore_global,.gitconfig,.inputrc, Brewfile} ./.dotfiles/root-backup/