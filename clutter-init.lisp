(in-package :utter-cl)

(at-init "load-clutter-lib"
  (eval-when (:compile-toplevel :load-toplevel :execute)
    (define-foreign-library clutter
      (t (:default "libclutter-glx-1.0")))
    (use-foreign-library clutter)))
