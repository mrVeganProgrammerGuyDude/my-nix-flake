# Home Manager i3 configuration for your user
{ config, lib, pkgs, ... }:

{
  # Define workspaces for the laptop display
  home.sessionVariables = {
    ws1 = "1";
    ws2 = "2";
    ws3 = "3";
    ws4 = "4";
    ws5 = "5";
    ws6 = "6";
    ws7 = "7";
    ws8 = "8";
    ws9 = "9";
  };

  # Keybindings
  programs.i3 = {
    enable = true;
    config = {
      # Set mod key to Mod4 (Super/Windows key)
      modMask = "Mod4";

      # Keybindings for switching between workspaces
      bindsym "$mod+1" exec "swaymsg workspace number ${home.sessionVariables.ws1}";
      bindsym "$mod+2" exec "swaymsg workspace number ${home.sessionVariables.ws2}";
      bindsym "$mod+3" exec "swaymsg workspace number ${home.sessionVariables.ws3}";
      bindsym "$mod+4" exec "swaymsg workspace number ${home.sessionVariables.ws4}";
      bindsym "$mod+5" exec "swaymsg workspace number ${home.sessionVariables.ws5}";
      bindsym "$mod+6" exec "swaymsg workspace number ${home.sessionVariables.ws6}";
      bindsym "$mod+7" exec "swaymsg workspace number ${home.sessionVariables.ws7}";
      bindsym "$mod+8" exec "swaymsg workspace number ${home.sessionVariables.ws8}";
      bindsym "$mod+9" exec "swaymsg workspace number ${home.sessionVariables.ws9}";

      # Keybindings for moving windows between workspaces
      bindsym "$mod+Shift+1" exec "swaymsg move container to workspace ${home.sessionVariables.ws1}";
      bindsym "$mod+Shift+2" exec "swaymsg move container to workspace ${home.sessionVariables.ws2}";
      bindsym "$mod+Shift+3" exec "swaymsg move container to workspace ${home.sessionVariables.ws3}";
      bindsym "$mod+Shift+4" exec "swaymsg move container to workspace ${home.sessionVariables.ws4}";
      bindsym "$mod+Shift+5" exec "swaymsg move container to workspace ${home.sessionVariables.ws5}";
      bindsym "$mod+Shift+6" exec "swaymsg move container to workspace ${home.sessionVariables.ws6}";
      bindsym "$mod+Shift+7" exec "swaymsg move container to workspace ${home.sessionVariables.ws7}";
      bindsym "$mod+Shift+8" exec "swaymsg move container to workspace ${home.sessionVariables.ws8}";
      bindsym "$mod+Shift+9" exec "swaymsg move container to workspace ${home.sessionVariables.ws9}";

      # Keybindings for other actions
      bindsym "$mod+Return" exec "alacritty";  # Start terminal (replace "alacritty" with your preferred terminal emulator)
      bindsym "$mod+q" kill;  # Kill focused window
      bindsym "$mod+s" exec "flameshot gui";  # Launch flameshot application
      bindsym "$mod+d" exec --no-startup-id "dmenu_run";  # Start dmenu

      # Focus and movement keybindings
      bindsym "$mod+j" focus left;
      bindsym "$mod+k" focus down;
      bindsym "$mod+l" focus up;
      bindsym "$mod+semicolon" focus right;

      bindsym "$mod+Shift+j" move left;
      bindsym "$mod+Shift+k" move down;
      bindsym "$mod+Shift+l" move up;
      bindsym "$mod+Shift+semicolon" move right;

      # Resize keybindings
      mode "resize" {
        bindsym j resize shrink width 10 px or 10 ppt;
        bindsym k resize grow height 10 px or 10 ppt;
        bindsym l resize shrink height 10 px or 10 ppt;
        bindsym semicolon resize grow width 10 px or 10 ppt;

        bindsym Left resize shrink width 10 px or 10 ppt;
        bindsym Down resize grow height 10 px or 10 ppt;
        bindsym Up resize shrink height 10 px or 10 ppt;
        bindsym Right resize grow width 10 px or 10 ppt;

        bindsym Return mode "default";
        bindsym Escape mode "default";
        bindsym "$mod+r" mode "default";
      }

      bindsym "$mod+r" mode "resize";

      # Toggle fullscreen mode
      bindsym "$mod+f" fullscreen toggle;

      # Split containers
      bindsym "$mod+h" split h;
      bindsym "$mod+v" split v;

      # Toggle tiling / floating mode
      bindsym "$mod+Shift+space" floating toggle;

      # Toggle focus between tiling / floating windows
      bindsym "$mod+space" focus mode_toggle;

      # Reload i3 configuration
      bindsym "$mod+Shift+c" reload;

      # Restart i3 (preserves your layout/session)
      bindsym "$mod+Shift+r" restart;

      # Exit i3
      bindsym "$mod+Shift+e" exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'";
    };
  };
}

