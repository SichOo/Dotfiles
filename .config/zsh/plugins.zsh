#!/bin/zsh

plugins=(
	'zsh-users/zsh-syntax-highlighting'
	'zsh-users/zsh-autosuggestions'
  'zsh-users/zsh-completions'
)

plugdir="$ZDOTDIR/plugins"

mkdir -p "$plugdir"

for name ($plugins); do
    url="https://github.com/${name}.git"
    out="${plugdir}/${name:t}"

    echo "\e[1m${name}\e[0m:"
    if [[ ! -d $out ]]; then
        git clone "$url" "$out" --depth 1
    else
        git -C "$out" pull
    fi
done
