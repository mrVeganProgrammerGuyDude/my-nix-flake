{
  # Importing zsh.nix from the specified location
  imports = [
    ./apps/zsh.nix
    ./apps/i3.nix
  ];

  # Setting up zsh (this line is commented out in the original code)
  # programs.zsh.enable = true;

  # Configuring the home directory settings
  home.username = "sheltronmini";         # Setting the username
  home.homeDirectory = "/home/sheltronmini";  # Specifying the home directory path
  home.stateVersion = "23.05";              # Setting the state version

  # Installing packages using Nixpkgs
  home.packages = with pkgs; [
    htop                        
    whatsapp-for-linux          
    ledger-live-desktop         
  ];
}
