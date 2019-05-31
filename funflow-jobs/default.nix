{ mkDerivation, base, bytestring, exceptions, funflow, hedis, lens
, monad-control, mtl, stdenv, store, text, transformers-base
}:
mkDerivation {
  pname = "funflow-jobs";
  version = "0.2.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring exceptions funflow hedis lens monad-control mtl
    store text transformers-base
  ];
  doCheck = false;
  homepage = "https://github.com/tweag/funflow";
  description = "Support for distribution of flows in funflow";
  license = stdenv.lib.licenses.bsd3;
}
