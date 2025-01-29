{

  	description = "My sytem configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";

		home-managerr = {
			url = "github:nix-community/home-manager/release-24.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs:
		let
			system = "x86_64-linux";
		in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
		     specialArgs = {
			pkgs-stable = import nixpkgs-stable {
			inherit system;
			config.allowUnfree = true;
			};
			inherit inputs system;
		      };
			modules = [ ./nixos/configuration.nix ];
		};

		homeConfigurations.lagann = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home-manager/home.nix ];
		};
	};
}
