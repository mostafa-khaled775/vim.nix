_: {
  imports = [
    # programming languages
    ./nix.nix
    ./c-family.nix
    ./rust.nix
    ./lua.nix
    ./protobuf.nix
    ./shell.nix
    ./python.nix
    ./lean.nix
    ./go.nix

    # configuration files
    ./json.nix
    ./yaml.nix
    ./toml.nix

    # mark-up
    ./markdown.nix
    ./typst.nix
  ];
}
