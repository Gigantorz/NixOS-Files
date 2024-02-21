zerotier-one:
	sudo zerotier-one -d
	sudo zerotier-cli join fada62b015b7fe63

nix-rebuild:
	sudo nixos-rebuild switch

delete-old:
	nix-env --list-generations
	nix-collect-garbage --delete-old
	sudo nix-collect-garbage -d

moonlight:
	moonlight

moonlight_install:
	nix-env -iA nixos.moonlight-qt
