echo "Backing up root level dotfiles: Copying them from root to current working folder";

mkdir -p ~/.dotfiles/root-backup/
cp ~/{.bash_profile,.bashrc,.gitignore_global,.inputrc, Brewfile} ./.dotfiles/root-backup/