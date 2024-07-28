{ stdenv, sbcl, emacsPackages, coreutils }:
{ lispWithSlynk = stdenv.mkDerivation {
    name = "lisp-with-slynk";
    version = "1.0.0";
    sbcl = sbcl;
    sly = emacsPackages.sly;
    coreutils = coreutils;
    builder = ./builder.sh;
    builderLisp = ./builder.lisp;
  };
}
