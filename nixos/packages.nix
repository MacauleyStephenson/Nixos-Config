{pkgs, ...}:{
	nixpkgs.config = {
		allowUnfree = true;
	};

	environment.systemPackages = with pkgs; [
	  vim
	  neovim
          htop
	  neofetch
	  #other
	  home-manager
	];
}
