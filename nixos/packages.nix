{pkgs, ...}:{
	nixpkgs.config = {
		allowUnfree = true;
	};

	environment.systemPackages = with pkgs; [
	  vim
	  neovim
          htop
	  neofetch
	  #GPU Stuff
	  nvidia
	  #other
	  home-manager
	];
}
