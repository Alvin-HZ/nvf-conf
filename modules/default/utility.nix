_: {
  vim.utility = {
    surround.enable = true;
    diffview-nvim.enable = true;
    outline.aerial-nvim = {
      enable = true;
    };
    motion = {
      flash-nvim = {
        enable = true;
      };
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
}
