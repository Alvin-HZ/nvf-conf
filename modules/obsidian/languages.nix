_: {
  vim = {
    languages = {
      enableTreesitter = true;
      enableFormat = true;
      enableExtraDiagnostics = true;

      markdown = {
        enable = true;
        format.enable = false;
        extensions.render-markdown-nvim.enable = true;
      };
    };
    lsp = {
      enable = true;
      formatOnSave = false;
    };
  };
}
