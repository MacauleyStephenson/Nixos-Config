{

	hardware.graphics = {
		enable = true;
	};
	

	services.xserver.videoDrivers = ["nvidia"];
	
	hardware.nvidia = {
		modesetting.enable = true;
	};
}
