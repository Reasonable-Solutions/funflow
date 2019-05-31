let
  config = {
    packageOverrides = pkgs: rec {
      haskellPackages = pkgs.haskellPackages.override {
        overrides = haskellPackagesNew: haskellPackagesOld: rec {
          funflow =
            haskellPackagesNew.callPackage ../funflow/default.nix { };
        };
      };
    };
  };

  pkgs = import <nixpkgs> { inherit config; };
in
{ funflowExamples = pkgs.haskellPackages.callPackage ./default.nix { };
 }