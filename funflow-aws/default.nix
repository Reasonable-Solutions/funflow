{ mkDerivation, aeson, aws, base, conduit, conduit-extra
, constraints, funflow, http-conduit, lens, path, path-io
, reflection, resourcet, stdenv, text
}:
mkDerivation {
  pname = "funflow-aws";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson aws base conduit conduit-extra constraints funflow
    http-conduit lens path path-io reflection resourcet text
  ];
  doCheck = false;
  homepage = "https://github.com/tweag/funflow";
  description = "Tools for flows which interact with AWS";
  license = stdenv.lib.licenses.mit;
}
