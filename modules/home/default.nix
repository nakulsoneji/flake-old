{ lib, ...}: {
  imports = lib.umport { path = ./.; exclude = [ ./default.nix ]; };

  xdg.enable = true;
}
