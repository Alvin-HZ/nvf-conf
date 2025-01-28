_: {
  vim.statusline.lualine = {
    enable = true;
    refresh.statusline = 100;
    ignoreFocus = [
      "neo-tree"
      "dapui_watches"
      "dapui_breakpoints"
      "dapui_scopes"
      "dapui_console"
      "dapui_stacks"
      "dap-repl"
    ];
  };
}
