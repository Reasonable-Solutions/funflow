let
  pkgs = import <nixpkgs> { };
in
  { funflow = pkgs.haskellPackages.callPackage ./default.nix {
   };
  }
