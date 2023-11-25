{ pkgs }:
pkgs.mkShell {
  buildInputs = with pkgs;[
    jekyll
  ];
}
