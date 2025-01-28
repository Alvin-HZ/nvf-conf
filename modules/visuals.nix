_: {
  vim.visuals = {
    cellular-automaton.enable = true;
    nvim-web-devicons.enable = true;
    indent-blankline = {
      enable = true;
      setupOpts = {
        exclude = {
          filetypes = ["dashboard"];
        };
      };
    };
    nvim-scrollbar.enable = true;

    nvim-cursorline = {
      enable = true;
      setupOpts = {
        cursorword.enable = true;
        cursorline = {
          enable = true;
          number = true;
          timeout = 0;
        };
      };
    };
  };
}
