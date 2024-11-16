# dotfiles

My set of dotfiles. Obviously totally subjective but I think they are good defaults if you do the same kind of work.

Assumes you run Mac, but should work fine for Linux given some small configuration changes.

## Important prep steps

1. **Before you do anything**, make sure to add your own `username` (usually `firstnamelastname`) at `export USERNAME=` in `/config/.zshrc` and set your name and email in `config/.gitconfig`.

2. Start the process with `bash start.sh`.

## What they do

### Fonts

- [Fira](https://github.com/mozilla/Fira) (OTF)
- [Powerline fonts](https://github.com/powerline/fonts)

### Tools

- Homebrew
- CLI tools for AWS and Google Cloud Platform (--> Homebrew)
- Node/npm (--> Volta)
- Deno (--> Homebrew)
- Yarn (--> Homebrew)
- Python 3.x (--> Homebrew)
- Rust
- Xcode

#### Homebrew

##### Packages

```
brew 'terraform'
brew 'python'
brew 'git'
brew 'git-lfs'
brew 'vim'
brew 'tree'
brew 'yarn'
brew 'deno'
brew 'podman'
brew 'wget'
```

## Styling

- Terminal theme: [Solarized Dark (Patched)](https://github.com/mbadolato/iTerm2-Color-Schemes)

Set it manually.
