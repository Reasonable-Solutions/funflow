{ mkDerivation, async, base, bytestring, containers, deepseq
, directory, exceptions, filepath, funflow, hashable, hedis, ilist
, katip, network, optparse-applicative, parsec, path, path-io
, process, safe-exceptions, scientific, stdenv, tasty, tasty-hunit
, text, transformers, unordered-containers, vector, yaml
}:
mkDerivation {
  pname = "funflow-cwl";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async base bytestring containers directory exceptions filepath
    funflow hashable ilist katip parsec path path-io process scientific
    text transformers unordered-containers vector yaml
  ];
  executableHaskellDepends = [
    base bytestring directory funflow hedis network
    optparse-applicative path path-io
  ];
  testHaskellDepends = [
    base containers deepseq directory filepath funflow path path-io
    safe-exceptions tasty tasty-hunit transformers yaml
  ];
  doCheck = false;
  homepage = "https://github.com/githubuser/cwl-funflow#readme";
  description = "A CWL implementation using Funflow";
  license = stdenv.lib.licenses.bsd3;
}
