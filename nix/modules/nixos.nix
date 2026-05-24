# nix/modules/nixos.nix — auto-generated from unicode-width.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.unicode-width;
in {
  options.services.unicode-width = {
    enable = lib.mkEnableOption "unicode-width";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.unicode-width or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
