_: {
  vim.notes = {
    todo-comments.enable = true;
    obsidian = {
      enable = false;
      setupOpts = {
        completion = {
          nvim_cmp = true;
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
      };
    };
  };
}
