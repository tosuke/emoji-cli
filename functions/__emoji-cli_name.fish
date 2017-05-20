function __emoji-cli_name
  select-emoji --name | read -l result
  commandline -it -- $result
  commandline -f repaint
end