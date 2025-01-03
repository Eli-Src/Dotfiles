{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "elias";
  home.homeDirectory = "/Users/elias";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    ".zshrc".source = "~/Dotfiles/zshrc/.zshrc";

    ".config/nix-darwin".source = "../nix-darwin";
    ".config/wezterm".source = "../wezterm";
    ".config/nvim".source = "../nvim";
    ".config/tmux".source = "../tmux";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
