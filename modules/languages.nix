_: {
  vim = {
    languages = {
      enableLSP = true;
      enableTreesitter = true;
      enableFormat = true;
      enableExtraDiagnostics = true;

      nix.enable = true;
      java.enable = true;
    };
    lsp = {
      trouble.enable = true;
      formatOnSave = true;
    };
  };
}
