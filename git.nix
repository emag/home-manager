{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "emag";
    userEmail = "lanabe.lanabe@gmail.com";
    aliases = {
      adda = "add .";
      cia = "commit -a -m";
      co = "checkout";
      d1 = "diff HEAD~";
      di = "diff";
      dc = "diff --cached";
      ol = "log --oneline";
      rsh = "reset --soft HEAD";
      rsh1 = "reset --soft HEAD~";
      st = "status";
    };
  };
}
