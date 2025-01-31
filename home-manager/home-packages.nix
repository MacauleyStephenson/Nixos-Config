{pkgs, ...}: {
	nixpkgs.config.allowUnfree = true;


	home.packages = with pkgs; [
	#CLI utilities
	  wget
	
	# WM stuff
	libnotify
	libsForQt5.xwaylandvideobridge
	xdg-desktop-portal-gtk
	xdg-desktop-portal-hyprland
	];
}
