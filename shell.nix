
{pkgs ? import <nixpkgs> {} }:



with pkgs;

  mkShell {

    buildInputs = [

     zlib 

    ];
   shellHook = ''
     export LD_LIBRARY_PATH="${pkgs.zlib}/lib"
   '';
}


