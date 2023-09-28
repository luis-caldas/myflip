with (import <nixpkgs> {});
let
  my-python-packages = python-packages: with python-packages; [
    pillow
    heatshrink2
  ];
  python-with-my-packages = python3.withPackages my-python-packages;
in
mkShell {
  buildInputs = [
    python-with-my-packages
  ];
}
