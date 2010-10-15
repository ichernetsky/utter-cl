(in-package :utter-glib)

(at-init "load-glib-lib"
  (eval-when (:compile-toplevel :load-toplevel :execute)
    (define-foreign-library glib
      (t (:default "libglib-2.0")))
    (use-foreign-library glib)))

(at-init "load-gthread-lib"
  (eval-when (:compile-toplevel :load-toplevel :execute)
    (define-foreign-library gthread
      (t (:default "libgthread-2.0")))
    (use-foreign-library gthread)))
