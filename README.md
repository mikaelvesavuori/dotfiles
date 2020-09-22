# dotfiles

My set of dotfiles. Obviously totally subjective but I think they are good defaults if you do the same kind of work.

Assumes you run Mac, but should work fine for Linux given some small configuration changes.

## Important prep steps

1. **Before you do anything**, make sure to add your own `username` (usually `firstnamelastname`) at `export USERNAME=` in `/config/.zshrc`.

2. **Navigate to the root (`~`) of your computer and run the scripts, as the scripts assume you are at root level!**

What they do:

## Installs...

### Fonts

- [Fira](https://github.com/mozilla/Fira) (OTF)
- [Powerline fonts](https://github.com/powerline/fonts)

### Tools

- Homebrew
- CLI tools for AWS, Google Cloud Platform and Azure (--> homebrew)
- Node/npm (--> homebrew)
- Deno (--> homebrew)
- Yarn (--> homebrew)
- Python 3.x (--> homebrew)
- Serverless Framework globally (--> NPM)
- Typescript globally (--> NPM)
- Xcode

#### Homebrew

##### Packages

```
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
brew 'docker'
brew 'wget'
```

##### Casks (applications)

```
cask 'google-cloud-sdk'
cask 'slack'
cask 'sourcetree'
cask 'visual-studio-code'
cask 'figma'
cask 'vlc'
cask 'imageoptim'
cask 'handbrake'
cask 'lastpass'
```

## Styling

- Terminal theme: [Solarized Dark (Patched)](https://github.com/mbadolato/iTerm2-Color-Schemes)
