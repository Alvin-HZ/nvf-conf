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
    extraActiveSection.c = [
      ''
          {
            -- Macro Status
        function()
        	local reg = vim.fn.reg_recording()
        	if reg == "" then return "" end -- not recording
        	return "recording to " .. reg
        end,
            icon = ' ',
            separator = {right = ''},
          }
      ''
    ];
  };
}
