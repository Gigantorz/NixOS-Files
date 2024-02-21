{

    inputs = {
        # ---Snip---
        auto-cpufreq = {
            url = "github:AdnanHodzic/auto-cpufreq";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        # ---Snip---
    };

    outputs = {nixpkgs, auto-cpufreq, ...} @ inputs: {
        nixosConfigurations.HOSTNAME = nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [
                ./configuration.nix
                auto-cpufreq.nixosModules.default
            ];
        };
    };
}
