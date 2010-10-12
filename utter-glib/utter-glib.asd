(defpackage :utter-glib-system
  (:use :cl :asdf))

(in-package :utter-glib-system)

(defsystem "utter-glib"
  :description "utter-glib: The utter CL bindings for Glib"
  :components ((:file "glib-init"))
  :depends-on (:cffi))
