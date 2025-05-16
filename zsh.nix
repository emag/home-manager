{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    autocd = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "ls -l";
      lla = "ls -la";
    };
    initContent = ''
      bindkey -e
      setopt no_beep
    '';
  };
}
