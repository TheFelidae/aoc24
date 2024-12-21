{ pkgs ? import <nixpkgs> { }
, stdenv ? pkgs.stdenv
, lib ? stdenv.lib
# A set providing `buildRustPackage :: attrsets -> derivation`
, rustPlatform ? pkgs.rustPlatform
, fetchFromGitHub ? pkgs.fetchFromGitHub
, gitignoreSrc ? null
, pkgconfig ? pkgs.pkgconfig
, gtk3 ? pkgs.gtk3
, glib ? pkgs.glib
, gobject-introspection ? pkgs.gobject-introspection
}:

rustPlatform.buildRustPackage rec {
  pname = "aoc24";
  version = "0.0.1";

  src = gitignoreSource ./.;

  buildInputs = with pkgs; [
  ];
  nativeBuildInputs = with pkgs; [
    
  ];

  cargoLock = {
    lockFile = ./Cargo.lock;
    allowBuiltinFetchGit = true;
  };

  shellHook = ''
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:${builtins.toString (pkgs.lib.makeLibraryPath buildInputs)}";
  '';

  meta = with stdenv.lib; {
    homepage = "";
    description = "";
    license = "Unlicense";
  };
}