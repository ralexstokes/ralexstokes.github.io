{
  description = "Cloudflare Pages Jekyll blog development shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixpkgs-ruby.url = "github:bobvanderlinden/nixpkgs-ruby";
    nixpkgs-ruby.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      nixpkgs,
      nixpkgs-ruby,
      ...
    }:
    let
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-linux"
      ];
      forEachSystem =
        f: nixpkgs.lib.genAttrs systems (system: f system (import nixpkgs { inherit system; }));
    in
    {
      devShells = forEachSystem (
        system: pkgs:
        let
          ruby = nixpkgs-ruby.lib.packageFromRubyVersionFile {
            file = ./.ruby-version;
            inherit system;
          };
          bundler = pkgs.bundler.override { inherit ruby; };
        in
        {
          default = pkgs.mkShell {
            packages = [
              bundler
              pkgs.just
              ruby
            ];
            shellHook = ''
              export BUNDLE_PATH="$PWD/vendor/bundle"
            '';
          };
        }
      );
    };
}
