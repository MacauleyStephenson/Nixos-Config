{ config, pkgs, ...}:{
	
	home = { 
		username = "lagann";
		homeDirectory = "/home/lagann";
		stateVersion = "24.11";
		
	};

	imports = [
		./bash.nix
		./modules
		./home-packages.nix
	];

}
