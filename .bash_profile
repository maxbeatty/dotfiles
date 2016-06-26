# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

export NVM_DIR="/Users/max/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
    . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi

# hub completion
if  which hub > /dev/null; then
    source "$(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh";
fi

# Enable tab completion for `g` by marking it as an alias for `git`
if type __git_complete &> /dev/null; then
    __git_complete g __git_main
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

