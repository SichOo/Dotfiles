[ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

# ---- XDG SPECS -------------------------------------------------------------------------
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ---- PATH ------------------------------------------------------------------------------
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

PathAppend() { [ -d "$1" ] && PATH="$PATH:$1"; }
PathAppend "$XDG_DATA_HOME/npm/bin"
unset PathAppend

# ---- XDG COMPLIANCES -------------------------------------------------------------------
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZCACHEDIR="$XDG_CACHE_HOME/zsh"
export DISTCC_DIR="$XDG_CACHE_HOME/distcc"
export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# ---- TMUX ------------------------------------------------------------------------------
if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi
