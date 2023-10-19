#!/bin/zsh

ZSH_PLUGIN_PATH="$ZDOTDIR/plugins"

autoload -Uz promptinit
promptinit
prompt redhat

. "$ZDOTDIR/completions.zsh"
. "$ZDOTDIR/options.zsh"

if [ -f "$XDG_CONFIG_HOME/aliasrc" ]; then
	. "$XDG_CONFIG_HOME/aliasrc"
fi

if [ -f "$ZSH_PLUGIN_PATH/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh" ]; then
	. "$ZSH_PLUGIN_PATH/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
fi

if [ -f "$ZSH_PLUGIN_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh" ]; then
	. "$ZSH_PLUGIN_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
fi
