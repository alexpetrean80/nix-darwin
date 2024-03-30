{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    home-manager
    kitty
    slack
    dbeaver
    pinentry_mac
  ];

  services.nix-daemon.enable = true;
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.hostPlatform = "aarch64-darwin";

  programs.zsh.enable = true;
  system.stateVersion = 4;
}
