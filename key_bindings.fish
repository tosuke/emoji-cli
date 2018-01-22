set -q EMOJI_CLI_KEYBIND; or set -l EMOJI_CLI_KEYBIND \cs

bind $EMOJI_CLI_KEYBIND "__emoji-cli"

if bind -M insert >/dev/null ^/dev/null
  bind -M insert $EMOJI_CLI_KEYBIND "__emoji-cli"
end