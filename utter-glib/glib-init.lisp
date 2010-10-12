(in-package :utter-glib)

(define-foreign-library glib
  (t (:default "libglib-2.0")))
(use-foreign-library glib)

(define-foreign-library gthread
  (t (:default "libgthread-2.0")))
(use-foreign-library gthread)
