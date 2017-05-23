function select-emoji -d "Select emoji using selector"
  set -q EMOJI_SELECTOR; or set -l EMOJI_SELECTOR "fzf"
  
  set -l mode "name"
  __emoji-cli_dict_json \
    | jq -r "to_entries | sort_by(.key) | map(\"\(.value) :\(.key):\") | .[]" \
    | eval $EMOJI_SELECTOR \
    | read -l result

  getopts $argv | while read -l opt
    switch $opt
      case n name
        set mode "name"
        break
      case e emoji
        set mode "emoji"
        break
    end
  end

  switch $mode
    case "name"
      echo $result | sed -E "s/^[^:]+//"
    case "emoji"
      echo $result | sed -E "s/^([^\ ]+).*/\1/"
  end
end