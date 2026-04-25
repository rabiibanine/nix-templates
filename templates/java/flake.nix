{
  description = "Java Gradle Development Environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
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
          jdk21
        ];

        shellHook = ''
          export JAVA_HOME="${pkgs.jdk21}/lib/openjdk"
          echo "☕ Vanilla Java Dev Environment Loaded"
        '';
      };
    };
}
