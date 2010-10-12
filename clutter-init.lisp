(defpackage :utter-cl
  (:use :cl :cffi)
  (:export)
  (:documentation
   "utter-cl: The utter CL bindings for Clutter"))

(in-package :utter-cl)

(define-foreign-library clutter
  (t (:default "libclutter-glx-1.0")))
(use-foreign-library clutter)
