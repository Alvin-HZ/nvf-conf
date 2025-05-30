{pkgs, ...}: {
  vim.telescope = {
    enable = true;
    setupOpts = {
      defaults = {
        pickers = {
          find_command = [
            "${pkgs.fd}/bin/fd"
            "--hidden"
          ];
        };
      };
    };
  };
}
