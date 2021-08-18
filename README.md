# ren-vim

Vim syntax highlighting for ren-lang.

## How to use it

### Using a plugin manager

Install the same way as any other plugin, e.g. using [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'ren-lang/ren-vim'
```

### Manual

Copy the `syntax/` and `ftdetect/` directories into your `runtimepath`
directory (e.g. ~/.config/nvim/syntax and ~/.config/nvim/ftdetect).

This should register files with the extension `.ren` as ren-lang files and
syntax highlight appropriately.

This syntax highlighting is a work in progress so may not be perfect.
