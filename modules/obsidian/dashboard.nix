_: {
  vim = {
    dashboard = {
      alpha = {
        enable = true;
        theme = null;
        layout = let
          padding = val: {
            type = "padding";
            inherit val;
          };
          button = text: raw_cmd: cmd: shortcut: {
            type = "button";
            val = text;
            on_press.raw = raw_cmd;
            opts = {
              # hl = "comment";
              keymap = [
                "n"
                shortcut
                cmd
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
              inherit shortcut;

              position = "left";
              cursor = 3;
              width = 38;
              align_shortcut = "left";
              hl_shortcut = "Keyword";
            };
          };
          header = {
            type = "text";
            val = [
              "                                  __"
              "     ___     ___    ___   __  __ /\\_\\    ___ ___"
              "    / _ `\\  / __`\\ / __`\\/\\ \\/\\ \\\\/\\ \\  / __` __`\\"
              "   /\\ \\/\\ \\/\\  __//\\ \\_\\ \\ \\ \\_/ |\\ \\ \\/\\ \\/\\ \\/\\ \\"
              "   \\ \\_\\ \\_\\ \\____\\ \\____/\\ \\___/  \\ \\_\\ \\_\\ \\_\\ \\_\\"
              "    \\/_/\\/_/\\/____/\\/___/  \\/__/    \\/_/\\/_/\\/_/\\/_/"
            ];
            opts = {
              hl = "Type";
              position = "center";
              shrink_margin = false;
            };
          };
        in [
          (padding 1)
          header
          (padding 2)
          (button " 📄 New Note" "<cmd>ene<CR>" "<cmd>:ene<CR>" "n")
          (button "    Daily Note" "<cmd>ObsidianToday<CR>" "<cmd>:ObsidianToday<CR>" "d")
          (button "    Quick Switch" "<cmd>ObsidianQuickSwitch<CR>" "<cmd>:ObsidianQuickSwitch<CR>" "q")
          (button "    Obsidian Search" "<cmd>ObsidianSearch<CR>" "<cmd>:ObsidianSearch<CR>" "s")
        ];
        opts = {
          margin = 10;
        };
      };
    };
  };
}
