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
        action = "<plug>(nvim-surround-visual)g";
        desc = "Add Bold";
      }
      {
        key = "<C-i>";
        mode = ["v"];
        action = "<plug>(nvim-surround-visual)*";
        desc = "Add Italics";
      }
      {
        key = "<C-b>";
        mode = ["i"];
        action = "<Plug>(nvim-surround-insert)g";
        desc = "Add Bold";
      }
      {
        key = "<C-b>";
        mode = ["n"];
        action = "<Plug>(nvim-surround-delete)*";
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
