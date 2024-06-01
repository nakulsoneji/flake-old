{ pkgs, ... }: {
  programs.zsh.enable = true;

  users.users.nakul = {
    isNormalUser = true;
    description = "Nakul";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}
