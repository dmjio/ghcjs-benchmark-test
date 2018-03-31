{ mkDerivation, base, ghcjs-base, stdenv }:
mkDerivation {
  pname = "ghcjs-jsstring-benchmark";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ghcjs-base ];
  license = stdenv.lib.licenses.bsd3;
}
