{ pkgs, config, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  powerManagement.cpuFreqGovernor = "performance";
}
