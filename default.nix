# This file has been generated by node2nix 6.0.0. Do not edit!

{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem}:

let
  nodeEnv = import ./nix/node-env.nix {
    inherit (pkgs) stdenv python utillinux runCommand writeTextFile nodejs;
  };
in
import ./node-packages.nix {
  inherit (pkgs) fetchurl fetchgit;
  inherit nodeEnv;
}