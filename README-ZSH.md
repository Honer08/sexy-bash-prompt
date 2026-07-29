# sexy-zsh-prompt

Zsh port of [sexy-bash-prompt](https://github.com/twolfson/sexy-bash-prompt)

[Zsh][zsh] prompt with colors, git statuses, and git branches.

Providing a unique symbol for every combination of a dirty, unpulled, and unpushed `git` branch.

[zsh]: http://zsh.sourceforge.net/

## Features

All the same great features as sexy-bash-prompt, now for zsh:

- **Git branch display** - Shows current branch name
- **Git status symbols**:
  - `*` - Dirty (uncommitted changes)
  - `△` - Unpushed commits
  - `▽` - Unpulled commits
  - `⬡` - Both unpushed and unpulled
  - `▲` - Dirty with unpushed commits
  - `▼` - Dirty with unpulled commits
  - `⬢` - Dirty with both unpushed and unpulled
- **Git progress indicators** - Shows `[merge]`, `[rebase]`, `[bisect]`, etc.
- **Colored output** - Different colors for user, host, directory, and git info
- **256 color support** - Enhanced colors on modern terminals

## Installation

### Quick install

One line install:

```zsh
(cd /tmp && git clone --depth 1 --config core.autocrlf=false https://github.com/twolfson/sexy-bash-prompt && cd sexy-bash-prompt && zsh install.zsh) && source ~/.zshrc
```

### Manual install

1. Clone the repository:
```zsh
git clone https://github.com/twolfson/sexy-bash-prompt
cd sexy-bash-prompt
```

2. Run the installation script:
```zsh
zsh install.zsh
```

3. Reload your shell configuration:
```zsh
source ~/.zshrc
```

## Customization

### Colors

Colors can be customized by editing [.zsh_prompt](.zsh_prompt) directly, or by setting the following environment variables:

- `PROMPT_USER_COLOR` - Color for username
- `PROMPT_DATETIME_COLOR` - Color for date/time
- `PROMPT_PREPOSITION_COLOR` - Color for "at", "in", "on"
- `PROMPT_DEVICE_COLOR` - Color for hostname
- `PROMPT_DIR_COLOR` - Color for directory
- `PROMPT_GIT_STATUS_COLOR` - Color for git branch
- `PROMPT_GIT_PROGRESS_COLOR` - Color for git progress indicators
- `PROMPT_SYMBOL_COLOR` - Color for prompt symbol

Example in `~/.zshrc`:

```zsh
export PROMPT_USER_COLOR="$(tput bold)$(tput setaf 39)" # Bold cyan
export PROMPT_DIR_COLOR="$(tput bold)$(tput setaf 201)" # Bold magenta
source ~/.zsh_prompt
```

### Symbols

Git status symbols can be customized via environment variables:

- `PROMPT_SYNCED_SYMBOL` - Default: `` (empty)
- `PROMPT_DIRTY_SYNCED_SYMBOL` - Default: `*`
- `PROMPT_UNPUSHED_SYMBOL` - Default: `△`
- `PROMPT_DIRTY_UNPUSHED_SYMBOL` - Default: `▲`
- `PROMPT_UNPULLED_SYMBOL` - Default: `▽`
- `PROMPT_DIRTY_UNPULLED_SYMBOL` - Default: `▼`
- `PROMPT_UNPUSHED_UNPULLED_SYMBOL` - Default: `⬡`
- `PROMPT_DIRTY_UNPUSHED_UNPULLED_SYMBOL` - Default: `⬢`

Example in `~/.zshrc`:

```zsh
export PROMPT_DIRTY_SYNCED_SYMBOL="✗"
export PROMPT_UNPUSHED_SYMBOL="↑"
export PROMPT_UNPULLED_SYMBOL="↓"
source ~/.zsh_prompt
```

### Prompt Symbol

The prompt symbol (default: `%` for users, `#` for root) can be customized:

```zsh
export PROMPT_SYMBOL="❯"
source ~/.zsh_prompt
```

## Differences from bash version

- Uses zsh's native prompt expansion (`%n` for username, `%m` for hostname, `%~` for directory)
- Prompt symbol is `%` by default instead of `$` (standard zsh convention)
- Uses `setopt prompt_subst` for command substitution in prompts
- Uses `%{...%}` to wrap non-printing characters (color codes)

## Uninstallation

To uninstall:

1. Remove the source line from `~/.zshrc`:
   ```zsh
   # Remove this line:
   source ~/.zsh_prompt
   ```

2. Delete `~/.zsh_prompt`:
   ```zsh
   rm ~/.zsh_prompt
   ```

3. Reload your shell:
   ```zsh
   source ~/.zshrc
   ```

## License

MIT License - See [LICENSE-MIT](LICENSE-MIT) in the parent project

## Credits

- Original bash version by [Todd Wolfson](https://github.com/twolfson)
- Forked from [gf3's gist](https://gist.github.com/gf3/306785/a35d28b6bdd0f7c54318cce510738438f04dabaa)
- Zsh port by GitHub Copilot
