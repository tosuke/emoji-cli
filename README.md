# emoji-cli
`emoji-cli` provides input completion for emoji on the command line with an interactive filter. (a fish porting of [b4b4r07/emoji-cli](https://github.com/b4b4r07/emoji-cli))

## :mag: Usage
To insert emoji to the commandline, type ctrl-s(^s)
```shell
$ git commit -m "^s
```

## :package: Installation
### With [**Fisherman**](https://github.com/fisherman/fisherman)
```shell
$ fisher Tosuke/emoji-cli
```
### With [**Fundle**](https://github.com/tuvistavie/fundle)
```fish
# config.fish
...
fundle plugin 'Tosuke/emoji-cli'
...
```

## Requirements
- An interactive filter
  - [**fzy**](https://github.com/jhawthorn/fzy)
  - [**fzf**](https://github.com/junegunn/fzf)
  - [**peco**](https://github.com/peco/peco)
  - [**percol**](https://github.com/mooz/percol)
  - etc...


## :wrench: Configurations
| Variable | Remarks | Default |
| -------- | ------- | ------- |
| EMOJI_CLI_FILTER | the interactive filter commands list | fzy fzf peco percol |
| EMOJI_CLI_KEYBIND | the key binding to start the completion | ^s(ctrl-s) |