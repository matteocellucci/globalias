# Cellux's globalias

Alternative implementation of [OhMyZsh globalias](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/globalias).

## Installation
```
git clone https://github.com/matteocellucci/globalias.git $ZSH_CUSTOM/plugins
```

Add `globalias` to current plugins in your `.zshrc`.

### Alias exclusion
Exclude alias from expansion in your `.zshrc` with:
```
export GLOBALIAS_EXCLUDE=(ls grep sudo)
```

## Differences
- No word expansion
- Exclude aliases form expansion with `GLOBALIAS_EXCLUDE` variable
- Different key bindings
