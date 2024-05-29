{ lib, ... }: 
let
  umport = (import ./umport.nix { inherit lib; }).umport;
in {
  inherit umport;
  scanPaths = path:
    builtins.map 
    (f: (path + "${f}"))
    (builtins.attrNames
      (lib.attrsets.filterAttrs
        (
          path: _type:
	    (_type == "directory")
            || (
	      (path != "default.nix")
              && (lib.strings.hasSuffix ".nix" path)
	    )
	)
	(builtins.readDir path)));
}

    
