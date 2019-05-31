{ mkDerivation, base, funflow, path-io, safe-exceptions, stdenv
, tasty, tasty-hunit
}:
mkDerivation {
  pname = "funflow-checkpoints";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base funflow ];
  testHaskellDepends = [
    base funflow path-io safe-exceptions tasty tasty-hunit
  ];
  doCheck = false;
  homepage = "https://github.com/tweag/funflow";
  description = "Checkpoint functionality for funflow workflows";
  license = stdenv.lib.licenses.bsd3;
}
