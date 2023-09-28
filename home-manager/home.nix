{ config, pkgs, ... }:

{

  imports = [
    ./apps/zsh.nix
  ];
  # programs.zsh.enable = true;
  home.username = "sheltronmini";
  home.homeDirectory = "/home/sheltronmini";
  home.stateVersion = "23.05";
  home.packages = with pkgs; [
    htop
  ];
}
