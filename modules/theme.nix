{ pkgs, lib, ... }: {
  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
    };

    lazy.plugins."vimplugin-auto-dark-mode" = {
      package = pkgs.vimUtils.buildVimPlugin {
        name = "auto-dark-mode";
        src = pkgs.fetchFromGitHub {
          owner = "f-person";
          repo = "auto-dark-mode.nvim";
          rev = "fa925885a004463e3af8690695b09baeb2b545bf";
          hash = "sha256-7ZhYKXhwqsrjfSbNZ/P02fFfi0JTFOUhzoeGtQROJCA=";
        };
      };

      setupModule = "auto-dark-mode";

      event = [ "BufEnter" ];
      setupOpts = { update_interval = 1000;};
    };

    # lua require("auto-dark-mode.utils").start_job({"dbus-send", "--session", "--print-reply=literal", "--reply-timeout=1000", "--dest=org.freedesktop.portal.Desktop", "/org/freedesktop/portal/desktop", "org.freedesktop.portal.Settings.Read", "string:org.freedesktop.appearance", "string:color-scheme"}, {on_stdout = function(res) print(res[1]) end})

  };
}
