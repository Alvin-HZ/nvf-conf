{
  pkgs,
  lib,
  ...
}: {
  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
    };

    extraPlugins = {
      "auto-dark-mode" = {
        package = pkgs.vimUtils.buildVimPlugin {
          name = "auto-dark-mode";
          src = builtins.fetchTarball {
            url = "https://github.com/f-person/auto-dark-mode.nvim/archive/c31de126963ffe9403901b4b0990dde0e6999cc6.tar.gz";
            sha256 = "0ipix0fnnmvly2xrr6s97h54mx4m9nigksz53c782miyf2m649b4";
          };
        };
        setup = "require(\"auto-dark-mode\").setup {
          update_interval = 1000;
        }";
      };
    };
  };
}
