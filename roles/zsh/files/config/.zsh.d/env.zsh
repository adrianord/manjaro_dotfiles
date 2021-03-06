# helpers
xdg_config_home="${XDG_CONFIG_HOME:-${HOME}/.config}"
xdg_cache_home="${XDG_CACHE_HOME:-${HOME}/.cache}"
xdg_data_home=${XDG_DATA_HOME:-${HOME}/.local}

export PATH=${PATH}:$xdg_data_home/bin

# defaults
export EDITOR="nvim"
export BROWSER="firefox"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# wget
export WGETRC="${xdg_config_home}/wgetrc"
echo hsts-file \= "${xdg_cache_home}/wget-hsts" >> "${xdg_config_home}/wgetrc"

# less
[[ ! -d "${xdg_cache_home}/less" ]] && mkdir "${xdg_cache_home}/less"
export LESSKEY="${xdg_config_home}/less/lesskey"
export LESSHISTFILE="${xdg_cache_home}/less/history"

if type cargo > /dev/null; then
  source $HOME/.cargo/env
fi

if type kubectl > /dev/null; then
  source <(kubectl completion zsh)
fi

if type helm > /dev/null; then
  source <(helm completion zsh)
fi

if [[ /usr/share/nvm/init-nvm.sh ]]; then
  source /usr/share/nvm/init-nvm.sh
fi
