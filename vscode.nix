{ pkgs, config, ... }:

{
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = false;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      scalameta.metals
    ];
  };
  home.file.".vscode-server/extensions" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/.vscode/extensions";
    force  = true;
  };
}
