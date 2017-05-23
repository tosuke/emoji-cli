bind \cs "__emoji-cli_name"
bind \cx "__emoji-cli_emoji"

if bind -M insert >/dev/null ^/dev/null
  bind -M insert \cs "__emoji-cli_name"
  bind -M insert \cx "__emoji-cli_emoji"
end