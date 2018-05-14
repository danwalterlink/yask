#Load themes from yask and from user's custom prompts (themes) in ~/.zsh.prompts
autoload promptinit
fpath=($HOME/.yask/zsh/prezto-themes $HOME/.zsh.prompts $fpath)
promptinit
