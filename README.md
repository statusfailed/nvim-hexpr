# nvim-hexpr

Neovim syntax highlighting for [H-Expressions](https://github.com/hellas-ai/hexpr) (.hex files)

## Installation

### lazy.nvim
```lua
{
  "statusfailed/nvim-hexpr",
  config = function()
    require("hex-nvim").setup()
  end,
}
```

### packer.nvim
```lua
use {
  "statusfailed/nvim-hexpr",
  config = function()
    require("hex-nvim").setup()
  end,
}
```

## Usage

The plugin automatically detects `.hex` files and applies syntax highlighting for:
- Comments (`#`)
- Composition `()`
- Tensor `{}`
- Frobenius `[]`
- Variables and operations

## Example

```hex
# This is a comment
(f g) # compose f and g
{f0 f1} # tensor f and g
[x y . x x] # create a spider that copies x and discards y
```
