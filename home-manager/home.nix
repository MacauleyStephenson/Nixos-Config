{ config, pkgs, ...}:{
	home = { 
		username = "lagann";
		homeDirectory = "/home/lagann";
		stateVersion = "24.11";
		
		packages = with pkgs; [
		  neofetch
		  htop
		];
	};

	imports = [
		./bash.nix
		./modules
	];

}
