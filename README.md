# Tmux Plugin Local Profile

Displays local profile in tmux status-right.

### Usage

Add `#{profile-info}` format strings to existing `status-right` tmux option. Example:

    # in .tmux.conf
    set -g status-right '#{profile-info}'

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'juli3nk/tmux-local-profile'

Hit `prefix + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

### Manual Installation

Clone the repo:

```shell
$ git clone https://github.com/juli3nk/tmux-local-profile ~/clone/path
```

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/server.tmux

Reload TMUX environment:

type this in terminal

```shell
$ tmux source-file ~/.tmux.conf
```

If format strings are added to `status-right`, they should now be visible.
