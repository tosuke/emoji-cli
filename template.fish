function available
  for cmd in $argv
    if which $cmd >/dev/null ^&1;
      echo $cmd
      break
    end
  end
end

function __emoji-cli -d 'Emoji completion on the command line'
  set -q EMOJI_CLI_FILTER; or set -l EMOJI_CLI_FILTER 'fzy' 'fzf' 'peco' 'percol'
  set -l list @emoji
  echo $list \
    | eval (available $EMOJI_CLI_FILTER) \
    | sed -E "s/^[^:]+//" \
    | read -l result
  
  commandline -it -- $result
  commandline -f repaint
end
