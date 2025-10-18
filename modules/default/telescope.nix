{pkgs, ...}: {
  vim.telescope = {
    enable = true;
    setupOpts = {
      pickers = {
        find_files.find_command = [
          "${pkgs.fd}/bin/fd"
          "--type=file"
          "--hidden"
        ];
      };
    };
  };
}
