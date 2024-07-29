{ stdenv
, sbcl
, emacsPackages
, coreutils
}:
{ lispWithSlynk = stdenv.mkDerivation {
    name = "lisp-with-slynk";
    version = "1.0.0";
    inherit sbcl coreutils;
    inherit (emacsPackages) sly;
    builder = ./builder.sh;
    builderLisp = ./builder.lisp;
  };
}
