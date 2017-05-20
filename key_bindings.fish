bind \cs "__emoji-cli_name"
bind \ce "__emoji-cli_emoji"

if bind -M insert >/dev/null ^/dev/null
  bind -M insert \cs "__emoji-cli_name"
  bind -M insert \ce "__emoji-cli_emoji"
end