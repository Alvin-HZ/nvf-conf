_: {
  vim = {
    terminal = {
      toggleterm = {
        enable = true;
        lazygit = {
          enable = true;
        };
        setupOpts = {
          direction = "float";
        };
      };
    };
    keymaps = [
      {
        key = "<A-d>";
        mode = ["" "i" "c" "t"];
        action = "<Cmd>execute v:count . \"ToggleTerm\"<CR>";
        desc = "Toggle terminal";
      }
    ];
  };
}
