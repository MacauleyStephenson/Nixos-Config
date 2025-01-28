{pkgs, ...}:{
	nixpkgs.config = {
		allowUnfree = true;
	};

	environment.systemPackages = with pkgs; [
	  htop
	  neofetch
	  home-manager
	];
}
