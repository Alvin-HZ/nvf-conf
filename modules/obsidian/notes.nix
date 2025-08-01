{
  pkgs,
  lib,
  ...
}: let
  obsidian-bridge-source = pkgs.vimUtils.buildVimPlugin {
    name = "obsidian-bridge";
    pname = "obsidian-bridge";
    src = builtins.fetchTarball {
      url = "https://github.com/oflisback/obsidian-bridge.nvim/archive/28f076e861900902ee2e01c874a0195b64ca03b6.tar.gz";
      sha256 = "1fq2g1xbpckbqd3vnvvv9ac7bm3nsyjrnhmifxw9nm3zc5vjx4m8";
    };

    nvimSkipModule = [
      "obsidian-bridge.commands"
      "obsidian-bridge.event_handlers"
      "obsidian-bridge"
      "obsidian-bridge.network"
    ];
  };
in {
  imports = [
    ./obsidian.nix
  ];
  vim = {
    notes = {
      todo-comments.enable = true;
    };

    lazy.plugins = {
      "obsidian-bridge" = {
        package = obsidian-bridge-source;
        event = [
          "BufReadPre *.md"
          "BufNewFile *.md"
        ];

        setupModule = "obsidian-bridge";
        setupOpts = {
          obsidian_server_address = "https://127.0.0.1:27124";
          scroll_sync = false;
          cert_path = "~/.ssl/obsidian.crt";
          warnings = true; #  Show misconfiguration warnings
          picker = "telescope";
        };
      };
    };
  };
}
