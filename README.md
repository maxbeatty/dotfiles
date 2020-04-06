# Max's dotfiles

Install dependencies with [Homebrew](https://brew.sh/):

```sh
brew install bat diff-so-fancy fzf go nvm romkatv/powerlevel10k/powerlevel10k prettyping zsh-autosuggestions zsh-syntax-highlighting
```

`wd` (_warp directory_) should be installed with [automatic `curl`](https://github.com/mfaerevaag/wd#automatic) to `~/bin/wd/wd.sh`.

My config and settings files for OS X

```sh
git clone https://github.com/maxbeatty/dotfiles.git && \
cd dotfiles && \
./sync.sh
```

Inspired by [Paul Irish](https://github.com/paulirish/dotfiles), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles/), and [Ben Alman](https://github.com/cowboy/dotfiles)
