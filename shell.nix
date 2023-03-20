{ pkgs ? import <nixpkgs> {} }:

let
  unstable = import <unstable> {};
in
pkgs.mkShell {
  buildInputs = (with pkgs; [
    unstable.cargo
    unstable.rustc
  ]);
}

