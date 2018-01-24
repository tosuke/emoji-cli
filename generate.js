'option strict'
const fs = require('fs')
const emoji = require('./emoji.json')

const list = emoji
  .filter(e => e.emoji)
  .map(e => e.aliases.map(a => `${a}\t${e.emoji}`).join('\n'))
  .join('\n')
fs.writeFileSync('./functions/__emoji-cli_emoji.tsv', list)