# vim.nix

nixvim configurations

## Usage

```nix
imports = [
  (import (builtins.fetchGit {
    url = "https://github.com/mostafa-khaled775/vim.nix";
  }))
 ];
```
