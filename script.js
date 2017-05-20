"option strict";
const fs = require("fs");

const emojis = require("./emoji.json");

let obj = {};

for(const emoji of emojis) {
  if(emoji.emoji == null) continue;

  emoji.aliases.forEach(alias => {
    obj[alias] = emoji.emoji;
  });
}

const fish = `
function __emoji-cli_dict_json
  echo '${JSON.stringify(obj)}'
end
`;

fs.writeFileSync("./functions/__emoji-cli_dict_json.fish", fish);