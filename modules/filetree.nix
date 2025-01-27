_: {
  vim = {filetree.neo-tree = {
    enable = true;
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
