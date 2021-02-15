{ config, pkgs, ... }:

{
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    enableScDaemon = true;
  };

  services.redshift = {
    enable = true;
    latitude = "43.648723";
    longitude = "-79.357716";
    temperature = {
      day = 5500;
      night = 2200;
    };
  };
}
