{
  pkgs,
  lib,
  ...
}: {
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
          rev = "02ef9553e2a1d6e861bc6955d58ce5883d28a6ad";
          hash = "sha256-FTXakglUrqifEXjzES6M4L+rthItu5rlw6QyIOLYNOc=";
        };
      };

      setupModule = "auto-dark-mode";

      lazy = true;
      event = ["BufEnter"];
      setupOpts = {
        update_interval = 1000;
      };
    };

    # lua require("auto-dark-mode.utils").start_job({"dbus-send", "--session", "--print-reply=literal", "--reply-timeout=1000", "--dest=org.freedesktop.portal.Desktop", "/org/freedesktop/portal/desktop", "org.freedesktop.portal.Settings.Read", "string:org.freedesktop.appearance", "string:color-scheme"}, {on_stdout = function(res) print(res[1]) end})
  };
}
