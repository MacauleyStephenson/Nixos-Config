{pkgs, ...}:{
	nixpkgs.config = {
		allowUnfree = true;
	};

	enviroment.systemPackages = with pkgs; [
	  #Desktop Apps
	  discord
	];
}
