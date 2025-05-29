_: {
  vim.tabline = {
    nvimBufferline = {
      enable = true;
      mappings = {
        closeCurrent = "<A-q>";
        cycleNext = "<A-o>";
        cyclePrevious = "<A-i>";
      };
      setupOpts = {
        options = {
          numbers = "none";
          offsets = [
  {
    filetype = "neo-tree";
    highlight = "Directory";
    separator = true;
    text = "File Explorer";
  }
];
        };
      };
    };
  };
}
