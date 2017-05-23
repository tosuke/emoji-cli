function emojify
  if test (count $argv) -ne 0
    echo $argv | string join " " | emojify
    return 0
  end

  set -l define (\
    __emoji-cli_dict_json \
      | jq -r 'to_entries | map("data[\":\(.key):\"]=\"\(.value)\"") | .[]' \
      | string join ";" \
  )
  set -l script "
    BEGIN { $define; }

    \$0 ~ /^:/ {
      x = data[\$0]
      print x
    }

    \$0 ~ /^[^:]/ { print \$0 }
  "
  
  while read -l line
    echo $line \
      | sed -E "s/:[a-z0-9\\+\\-\\_]+:/\\n\\0\\n/g" \
      | awk $script \
      | string join ""
  end
end