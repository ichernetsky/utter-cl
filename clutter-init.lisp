(in-package :utter-cl)

(define-foreign-library clutter
  (t (:default "libclutter-glx-1.0")))
(use-foreign-library clutter)
