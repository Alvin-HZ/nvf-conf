_: {
  vim = {
    utility = {
      surround = {
        enable = true;
        setupOpts = {
          surrounds = {
            "g" = {
              add = ["**" "**"];
              delete = "^(%*%*)().-(%*%*)()$";
              change = {
                target = "^(%*%*)().-(%*%*)()$";
              };
            };
          };
        };
      };
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
        key = "<C-b>";
        mode = ["v"];
        action = "<CMD>norm gzg<CR>";
        desc = "Add Bold";
      }
      {
        key = "<C-i>";
        mode = ["v"];
        action = "<CMD>norm gz*<CR>";
        desc = "Add Italics";
      }
      {
        key = "<C-b>";
        mode = ["n"];
        action = "<CMD>norm gzd*<CR>";
        desc = "Remove Italics";
      }
      {
        key = "<leader>oo";
        mode = ["" "t" "n"];
        action = "<CMD>AerialToggle!<CR>";
        desc = "Toggle Outline";
      }
    ];
  };
}
