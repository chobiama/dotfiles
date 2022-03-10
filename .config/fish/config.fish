set PATH $HOME/.nodebrew/current/bin $PATH
set XDG_CONFIG_HOME ~/.config $XDG_CONFIG_HOME
set XDG_CACHE_HOME ~/.cache $XDG_CACHE_HOME
set ANDROID_HOME $HOME/Library/Android/sdk
set PATH $ANDROID_HOME/emulator $PATH
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/tools/bin $PATH
set PATH $ANDROID_HOME/platform-tools $PATH

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

## aliases
alias vim 'nvim'
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git

## peco
set fish_plugins theme peco

function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
  bind \c] peco_select_ghq_repository # Bind dor peco ghq history to Ctrl+]
end
