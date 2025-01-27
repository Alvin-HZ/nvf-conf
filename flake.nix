{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";

  };

  outputs =
    { self
    , nixpkgs
    , ...
    } @ inputs:
    let
      system = "x86_64-linux";
      neovimConfigured = inputs.nvf.lib.neovimConfiguration {
        inherit (nixpkgs.legacyPackages.${system}) pkgs;
        modules = [
          ./modules
        ];
      };
    in
    {
      packages.${system} = {
        default = neovimConfigured.neovim;
      };
    };
}