{pkgs, ...}: {
	nixpkgs.config.allowUnfree = true;


	home.packgaes = with pkgs; [
	  #CLI utilities
	  wget
	];
}
