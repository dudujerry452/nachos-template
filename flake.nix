{
  description = "nixos nachos project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      localCompilerPath = ./gcc-2.8.1-mips;
      myLinkPkg = pkgs.runCommand "my-link" { } ''
        mkdir -p $out/lib
        ln -s /usr/bin/cpp $out/lib/cpp
      '';
    in
    {
      devShells.${system}.default =
        (pkgs.buildFHSEnv {
          name = "nachos-env";

          targetPkgs =
            pkgs: with pkgs; [
              gnumake
              gcc_multi
              zlib
              bear
              ncurses
              myLinkPkg
            ];

          multiPkgs =
            pkgs: with pkgs; [
              # glibc
              glibc.dev
              pkgsi686Linux.glibc
              pkgsi686Linux.glibc.dev
            ];

          # /lib->/usr/lib->/usr/lib64
          extraBuildCommands = ''
            mkdir -p $out/usr/local $out/usr/lib64
            ln -s ${localCompilerPath}/mips $out/usr/local/mips
            # ln -s /usr/bin/cpp $out/usr/lib64/cpp
          '';

          profile = ''
            [[ $- == *i* ]] && echo "Welcome to NachOS flake development environment!"
          '';

        }).env;

    };
}
