{ inputs, pkgs, lib, ... }: {
  imports = [
    inputs.hyprland.homeManagerModules.default
    inputs.nixvim.homeManagerModules.nixvim
    inputs.schizofox.homeManagerModules
    ../modules/home
  ];

  home = {
    username = "nakul";
    homeDirectory = "/home/nakul";
  };
  
  programs.home-manager.enable = true;
  home.stateVersion = "23.11";
}
