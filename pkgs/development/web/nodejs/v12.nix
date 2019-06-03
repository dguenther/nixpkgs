{ stdenv, callPackage, lib, openssl, icu, enableNpm ? true }:

let
  buildNodejs = callPackage ./nodejs.nix { inherit openssl icu; };
in
  buildNodejs {
    inherit enableNpm;
    version = "12.3.1";
    sha256 = "1zhb5nq9s6cshbm6lf7qsy310fcsiy9wdr869vs6hw76zyn50axs";
  }
