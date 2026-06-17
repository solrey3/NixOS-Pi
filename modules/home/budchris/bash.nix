{ ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    historyControl = [ "ignoredups" "ignorespace" ];
    historyFileSize = 100000;
    historySize = 100000;

    shellOptions = [
      "histappend"
      "checkwinsize"
      "cmdhist"
    ];

    initExtra = ''
      # Up/down arrows search history using the current input as a prefix.
      # Bind both common cursor-key encodings:
      #   \e[A / \e[B = normal cursor mode
      #   \eOA / \eOB = application cursor mode, common in tmux/Konsole/etc.
      for keymap in emacs-standard vi-command vi-insert; do
        bind -m "$keymap" '"\e[A": history-search-backward'
        bind -m "$keymap" '"\e[B": history-search-forward'
        bind -m "$keymap" '"\eOA": history-search-backward'
        bind -m "$keymap" '"\eOB": history-search-forward'
      done

      # Ctrl-r incremental reverse history search.
      bind '"\C-r": reverse-search-history'
    '';
  };
}
