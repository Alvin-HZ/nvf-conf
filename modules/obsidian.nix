{lib, ...}: {
  vim.notes.obsidian = {
    enable = true;
    setupOpts = {
      completion = {
        nvim_cmp = true;
        min_chars = 2;
      };
      workspaces = [
        {
          name = "personal";
          path = "~/Documents/Obsidian-Notes";
        }
      ];
      new_notes_location = "notes_subdir";
      notes_subdir = "06 - In";
      attachments = {
        img_folder = "99 - Misc/Images";
      };
      picker = {
        # Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
        name = "telescope.nvim";
        # Optional, configure key mappings for the picker. These are the defaults.
        # Not all pickers support all mappings.
        note_mappings = {
          # Create a new note from your query.
          new = "<C-x>";
          # Insert a link to the selected note.
          insert_link = "<C-l>";
        };
        tag_mappings = {
          # Add tag(s) to current note.
          tag_note = "<C-x>";
          # Insert a tag at the current location.
          insert_tag = "<C-l>";
        };
      };

      templates = {
        folder = "99 - Misc/Templates";
        date_format = "%Y-%m-%d";
        time_format = "%H:%M";
        substitutions = {
          date_word = lib.generators.mkLuaInline ''
            function()
              return os.date("%A, %B %d, %Y", os.time());
            end'';
        };
      };
      daily_notes = {
        # Optional, if you keep daily notes in a separate directory.
        folder = "03 - Daily Notes";
        # Optional, default tags to add to each new daily note created.
        default_tags = ["Daily"];
        # Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        template = "99 - Misc/Templates/Daily Nvim.md";
      };
    };
  };
}
