(defpackage :utter-glib-system
  (:use :cl :asdf))

(in-package :utter-glib-system)

(defsystem "utter-glib"
  :description "utter-glib: The utter CL bindings for Glib"
  :serial t
  :components ((:file "glib-package")
               (:file "glib-init")
               (:file "glib-basic-types")
               (:file "glib-version")
               (:file "glib-event-loop")
               (:file "glib-threads"))
  :depends-on (:cffi :utter-std))
