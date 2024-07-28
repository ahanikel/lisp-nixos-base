#!/bin/sh
export slynk=$sly/share/emacs/site-lisp/elpa/sly-20240413.2145/slynk/
export contrib=$sly/share/emacs/site-lisp/elpa/sly-20240413.2145/contrib/
$coreutils/bin/mkdir $out
export HOME=$out
${sbcl}/bin/sbcl --load ${builderLisp}
$coreutils/bin/cat <<EOF > $out/start.sh
exec ${sbcl}/bin/sbcl --core $out/sbcl.core
EOF
$coreutils/bin/chmod +x $out/start.sh
