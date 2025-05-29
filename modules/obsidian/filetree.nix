_: {
  vim = {
    filetree.neo-tree = {
      enable = true;
      setupOpts = {
        filesystem = {
          filtered_items = {
            hide_dotfiles = false;
            hide_gitignored = true;
          };
          hijack_netrw_behavior = "open_current";
        };
      };
    };
    keymaps = [
      {
        key = "<C-n>";
        mode = ["" "i" "t"];
        action = "<CMD>Neotree toggle<CR>";
        desc = "Toggle neo-tree";
      }
    ];
  };
}
