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
      # Ghostty advertises TERM=xterm-ghostty. On machines without that
      # terminfo entry, programs such as tmux fail with
      # "missing or unsuitable terminal: xterm-ghostty". Fall back to the
      # widely available xterm-256color entry when the current TERM is unknown.
      case "''${TERM-}" in
        xterm-ghostty|ghostty)
          if ! { command -v infocmp >/dev/null 2>&1 && infocmp "$TERM" >/dev/null 2>&1; }; then
            export TERM=xterm-256color
          fi
          ;;
      esac

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
