(require 'asdf)
(setq asdf:*central-registry* (list (parse-namestring (sb-ext:posix-getenv "slynk"))))
(asdf:load-system :slynk)
(mapcar #'load
	(delete-if #'(lambda (f) (not (string= "lisp" (pathname-type f))))
		   (uiop:directory-files (parse-namestring (sb-ext:posix-getenv "contrib")))))
(sb-ext:save-lisp-and-die (format nil "~a/sbcl.core" (sb-ext:posix-getenv "out")))
