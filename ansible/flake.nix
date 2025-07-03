{
  description = "Homelab Ansible Setup";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.ansible = pkgs.mkShell {
        buildInputs = with pkgs; [
          python3
          python3Packages.ansible
          python3Packages.netaddr
          python3Packages.passlib
          python3Packages.proxmoxer
          bitwarden-cli
        ];

        shellHook = ''
          echo "Welcome to the Ansible development shell for the Homelab project!"
        '';
      };
    };
}