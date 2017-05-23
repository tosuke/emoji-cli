function __emoji-cli_emoji
  select-emoji --emoji | read -l result
  commandline -it -- $result
  commandline -f repaint
end