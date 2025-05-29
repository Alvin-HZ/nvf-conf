{ pkgs, ... }: {
  vim.extraPackages = with pkgs; [
    ueberzugpp
  ];
}
