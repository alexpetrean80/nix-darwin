{ pkgs, ... }: {
  environment.systemPackages =
    (with pkgs; [
      slack
      pinentry_mac
      google-cloud-sdk
      kubernetes-helm
      fzf
      gnupg
      ripgrep
      fd
      eza
      glow
      bat
      neovim
      neofetch
      nixd
      httpie
      cmake
      gnumake
      gcc
      rustup
      nodejs_20
      python3
      python312Packages.pip
      go
      fnm
      postgresql
      lazygit
      git
      tmux
      tmux-sessionizer
      elixir
      htop
      stow
      gh
      gh-dash
      aws-vault
      snyk
      teleport
      terraform
      tilt
      confluent-cli
      jdk17
      darwin.CF
      darwin.Libc
      darwin.Security
      jira-cli-go
    ])
    ++ (with pkgs.darwin; [ cf-private ]);

  services.nix-daemon.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs = {
    hostPlatform = "aarch64-darwin";
    config.allowUnfree = true;
  };

  programs.zsh.enable = true;
  system.stateVersion = 4;
}
