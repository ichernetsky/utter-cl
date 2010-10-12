(defpackage :utter-cl-system
  (:use :cl :asdf))

(in-package :utter-cl-system)

(defsystem "utter-cl"
  :description "utter-cl: The utter CL bindings for Clutter"
  :serial t
  :components ((:file "clutter-package")
               (:file "clutter-init")
               (:file "clutter-threads")
               (:file "clutter-general"))
  :depends-on (:cffi :utter-glib))
