# @maxbeatty's dotfiles

Install dependencies with [Homebrew](https://brew.sh/):

```sh
brew install awscli bat corepack \
diff-so-fancy fzf gh go node \
romkatv/powerlevel10k/powerlevel10k \
prettyping shellcheck tfenv \
zsh-autosuggestions zsh-syntax-highlighting
```

`wd` (_warp directory_) should be installed with [automatic `curl`](https://github.com/mfaerevaag/wd#automatic) to `~/bin/wd/wd.sh`.

My config and settings files for macOS

```sh
git clone https://github.com/maxbeatty/dotfiles.git && \
cd dotfiles && \
./sync.sh
```

Inspired by [Paul Irish](https://github.com/paulirish/dotfiles), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles/), and [Ben Alman](https://github.com/cowboy/dotfiles)

## Terminal

I like the [Hack font](https://sourcefoundry.org/hack/) and pick something like Dracula from [lysyi3m/macos-terminal-themes](https://github.com/lysyi3m/macos-terminal-themes)

## Vim

The included `.vimrc` requires some one-time setup:

```sh
mkdir -p ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git ~/.vim/pack/themes/start/dracula
```

## Additional Resources

- [CLI:improved](https://remysharp.com/2018/08/23/cli-improved)
- [hermit](https://cashapp.github.io/hermit/)
- [speed-test](https://github.com/sindresorhus/speed-test)
- [fast-cli](https://github.com/sindresorhus/fast-cli)
