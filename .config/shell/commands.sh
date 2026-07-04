function cfg {
  source "$HOME/.bashrc"
}

function dev {
  local dir="${1:-$PWD}"
  docker run -v "$dir":/workspace -v claude:/home/node/.claude -u node -it vibe bash
}

# nvim
# ====

function nv {
  if [ -z "$1" ]; then
    nvim .
  else
    nvim "$1"
  fi
}

# tmux
# ====

function tma {
  if [ -z "$1" ]; then
    tmux attach
  else
    tmux new -As "$1"
  fi
}

function tmk {
  if [ -z "$1" ]; then
   tmux kill-server
  else
   tmux kill-session -t "$1"
  fi
}

