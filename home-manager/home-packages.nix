{pkgs, ...}: {
	nixpkgs.config.allowUnfree = true;


	home.packages = with pkgs; [
	  #CLI utilities
	  wget
	  kitty
	];
}
