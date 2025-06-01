_: {
  vim = {
    utility = {
      surround.enable = true;
      diffview-nvim.enable = true;
      outline.aerial-nvim = {
        enable = true;
      };
      images.image-nvim = {
        enable = true;
        setupOpts = {
          editorOnlyRenderWhenFocused = true;
          integrations.markdown = {
            enable = true;
            clearInInsertMode = true;
          };
        };
      };
    };
    keymaps = [
      {
        key = "<leader>o";
        mode = ["" "i" "t" "n"];
        action = "<CMD>AerialToggle!<CR>";
        desc = "Toggle Outline";
      }
    ];
  };
}
