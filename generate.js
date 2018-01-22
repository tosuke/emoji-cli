'option strict'
const fs = require('fs')
const emoji = require('./emoji.json')

const list = emoji
  .filter(e => e.emoji)
  .map(e => e.aliases.map(a => `"${e.emoji} :${a}:"`).join('\\n'))
  .join('\\n')
const src = fs.readFileSync('./__emoji-cli.fish.template', { encoding: 'utf-8' })
const dest = src.replace('@emoji', list)
fs.writeFileSync('./functions/__emoji-cli.fish', dest)
