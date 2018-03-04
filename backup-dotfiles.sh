echo "Backing up dotfiles: Copying them from root to current working folder";

mkdir -p dotfiles
cp ~/{.bash_profile,.bashrc,.gitignore_global,.inputrc} ./dotfiles/
mkdir -p brew
cp ~/Brewfile ./brew/