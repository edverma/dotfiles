export PATH=$PATH:$HOME/.maestro/bin

# List zellij sessions sorted by most recently used
zellij-recent() {
  local zellij_cache="$HOME/.cache/zellij"
  local version_dir=$(ls -1d "$zellij_cache"/[0-9]*.[0-9]* 2>/dev/null | head -1)

  if [[ -d "$version_dir/session_info" ]]; then
    ls -1tr "$version_dir/session_info"
  else
    echo "No session info found" >&2
    return 1
  fi
}
