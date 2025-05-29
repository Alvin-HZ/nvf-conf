_: {
  vim = {
    ui = {
      noice.enable = true;
      colorizer.enable = true;
      fastaction.enable = true;
      breadcrumbs = {
        lualine.winbar = {
          enable = true;
          alwaysRender = true;
        };
        navbuddy = {
          enable = true;
        };
        enable = true;
      };
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
