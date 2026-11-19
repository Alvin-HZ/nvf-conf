_: {
  vim = {
    ui = {
      noice.enable = true;
      colorizer.enable = true;
      fastaction.enable = true;
    };
    keymaps = [
      {
        key = "<leader>lN";
        mode = [""];
        action = "<Cmd>Navbuddy<CR>";
        desc = "Open Navbuddy";
      }
    ];
  };
}
