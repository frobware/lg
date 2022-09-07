with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "lg";
  src = ./.;

  buildInputs = [ ncurses libusb1 ];

  buildPhase = ''
    gcc main.c -lncurses -lusb-1.0
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp a.out $out/bin/lg
  '';
}
