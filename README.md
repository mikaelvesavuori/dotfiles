# dotfiles

My set of dotfiles. Obviously totally subjective but I think they are good defaults if you do the same kind of work.

Assumes you run Mac, but should work fine for Linux given some small configuration changes.

**Before you do anything**, make sure to add your own `username` (usually `firstnamelastname`) at `export USERNAME=` in `/config/.zshrc`.

What they do:

## Installs...

### Fonts

- [Fira](https://github.com/mozilla/Fira) (OTF)
- [Powerline fonts](https://github.com/powerline/fonts)

### Tools

- Homebrew
- CLI tools for AWS, Google Cloud Platform and Azure (--> homebrew)
- Node/npm and Deno (--> homebrew)
- Yarn (--> homebrew)
- Python 3.x (--> homebrew)
- Serverless Framework globally (--> NPM)
- Xcode

#### Homebrew

##### Packages

```
tap 'caskroom/cask' || true
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'bramstein/webfonttools'
brew 'azure-cli'
brew 'terraform'
brew 'python'
brew 'git'
brew 'git-lfs'
brew 'vim'
brew 'tree'
brew 'yarn'
brew 'node'
brew 'deno'
brew 'yarn'
brew 'zsh'
brew 'docker'
brew 'minikube'
brew 'wget'
brew 'firebase-cli'
brew 'woff2'
```

##### Casks

```
cask 'google-cloud-sdk'
cask 'virtualbox'
cask 'dropbox'
cask 'google-chrome'
cask 'slack'
cask 'sourcetree'
cask 'visual-studio-code'
cask 'figma'
cask 'vlc'
cask 'imageoptim'
cask 'handbrake'
cask 'skype'
cask 'skypewebplugin'
cask 'insomnia'
cask 'lastpass'
```

## Styling

- Terminal theme: [Solarized Dark (Patched)](https://github.com/mbadolato/iTerm2-Color-Schemes)
