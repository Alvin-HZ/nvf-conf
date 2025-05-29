_: {
  vim = {
    languages = {
      enableLSP = true;
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
      formatOnSave = false;
    };
  };
}
