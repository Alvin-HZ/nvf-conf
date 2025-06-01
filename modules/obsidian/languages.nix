_: {
  vim = {
    languages = {
      enableTreesitter = true;
      enableFormat = true;
      enableExtraDiagnostics = true;

      markdown = {
        enable = true;
        format.enable = false;
        extensions.render-markdown-nvim = {
          enable = true;
          setupOpts = {
            heading = {
              sign = false;
              position = "inline";
              icons = ["\# " "\#\# " "\#\#\# " "\#\#\#\# " "\#\#\#\#\# " "\#\#\#\#\#\# "];
              width = "block";
              left_pad = 2;
              right_pad = 4;
            };
            code = {
              sign = false;
              left_pad = 2;
              right_pad = 4;
              border = "thick";
            };
            bullet = {
              right_pad = 2;
            };
          };
        };
      };
    };
    lsp = {
      enable = true;
      formatOnSave = false;
    };
  };
}
