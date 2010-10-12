(defpackage :utter-cl-system
  (:use :cl :asdf))

(in-package :utter-cl-system)

(defsystem "utter-cl"
  :description "utter-cl: The utter CL bindings for Clutter"
  :components ((:file "clutter-init"))
  :depends-on (:cffi :utter-glib))
