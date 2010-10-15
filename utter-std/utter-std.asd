(defpackage :utter-std-system
  (:use :cl :asdf))

(in-package :utter-std-system)

(defsystem "utter-std"
  :description "utter-std: a set of utilities used in utter-cl"
  :serial t
  :components ((:file "std-package")
               (:file "std-init"))
  :depends-on (:iterate))
