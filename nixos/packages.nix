{pkgs, ...}:{
	nixpkgs.config = {
		allowUnfree = true;
	};

	environment.systemPackages = with pkgs; [
	  #Entertainment
	  spotify
	
	  #Cli Aplications
	  vim
	  neovim
          htop
	  neofetch
		
	  #other
	  home-manager
	];
}
