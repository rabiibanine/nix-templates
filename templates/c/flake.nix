{
  description = "C Development Environment";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/b12141ef619e0a9c1c84dc8c684040326f27cdcc";
    };
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          gcc
        ];

      };
    };
}
