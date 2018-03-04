function setupWebProject() {
	mkdir -p $1
	touch $1/readme.md
	touch $1/index.html
	mkdir -p $1/styles
	touch $1/styles/main.css
	mkdir -p $1/scripts/{js,vendor}
	mkdir -p $1/media/{img,gfx,icons,fonts}
	source .bashrc
}

export -f setupWebProject

alias removeTrashFiles="
find . -name '*.DS_Store' -type f -delete
find . -name 'Icon?' -type f -delete
find . -name '$RECYCLE.BIN' -type f -delete
find . -name 'desktop.ini' -type f -delete
find . -name 'Thumbs.db' -type f -delete"

alias gitit="git add .;git commit -m 'Update';git push"

alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

alias showShadows="defaults write com.apple.screencapture disable-shadow -bool false; killall SystemUIServer";
alias hideShadows="defaults write com.apple.screencapture disable-shadow -bool true; killall SystemUIServer"

alias setScreenshotsTiff="defaults write com.apple.screencapture type tiff; killall SystemUIServer";
alias setScreenshotsJpg="defaults write com.apple.screencapture type jpg; killall SystemUIServer";
alias setScreenshotsPdf="defaults write com.apple.screencapture type pdf; killall SystemUIServer";
alias setScreenshotsPng="defaults write com.apple.screencapture type png; killall SystemUIServer";

export PATH="$PATH:`yarn global bin`"

# Setting PATH for Python 3.6
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH