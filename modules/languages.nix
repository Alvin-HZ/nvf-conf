_: {
  vim = {
    languages = {
      enableLSP = true;
      enableTreesitter = true;
      enableFormat = true;
      enableExtraDiagnostics = true;

      nix.enable = true;
      python.enable = true;
      markdown = {
        enable = true;
        format.enable = false;
        extensions.render-markdown-nvim.enable = true;
      };
      java.enable = true;
      bash.enable = true;
      rust = {
        enable = true;
        crates.enable = true;
      };
    };
    lsp = {
      trouble.enable = true;
      formatOnSave = true;
    };
  };
}
