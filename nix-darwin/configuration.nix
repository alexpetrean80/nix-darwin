{pkgs, ...}: {
  environment.systemPackages =
    (with pkgs; [
      home-manager
      kitty
      slack
      dbeaver
      pinentry_mac
    ])
    ++ (with pkgs.darwin; [cf-private]);

  services.nix-daemon.enable = true;
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;

  programs.zsh.enable = true;
  system.stateVersion = 4;
}
