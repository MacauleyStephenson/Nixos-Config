{
 wayland.windowManager.hyprland = {
	enable = true;
	systemd.enable = true;
		settings = {
		env = [
		"NIXOS_OZONE_WL,1"
		"XDG_CURRENT_DESKTOP,Hyprland"
		"XDG_SESSION_TYPE,wayland"
		"XDG_SESSION_DESKTOP,Hyprland"
		"QT_QPA_PLATFORM,wayland"
			];

		"$terminal" = "kitty";
		};
 	};
}
