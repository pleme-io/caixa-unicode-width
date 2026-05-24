# nix/modules/home-manager.nix — auto-generated from unicode-width.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.unicode-width; in {
  options.programs.unicode-width = {
    enable = lib.mkEnableOption "unicode-width";
    package = lib.mkOption { type = lib.types.package; default = pkgs.unicode-width or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
