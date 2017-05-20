function __emoji-cli_emoji
  select-emoji --emoji | read -l result
  commandline -it -- $result
  commandline -it -- $result
end