{ mkDerivation, aeson, async, base, bytestring, containers
, data-default, directory, funflow, katip, lens, lens-aeson
, optparse-generic, parsec, path, path-io, safe-exceptions, stdenv
, text, unix, wreq
}:
mkDerivation {
  pname = "funflow-examples";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson async base bytestring containers data-default directory
    funflow katip lens lens-aeson optparse-generic parsec path path-io
    safe-exceptions text unix wreq
  ];
  doCheck = false;
  license = stdenv.lib.licenses.mit;
}
