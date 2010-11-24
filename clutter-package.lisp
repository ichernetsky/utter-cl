(defpackage :utter-cl
  (:use :cl :cffi :utter-std :utter-glib)
  (:export :clutter-threads-init
           :clutter-threads-enter
           :clutter-threads-leave
           :clutter-init-error
           :clutter-init
           :clutter-main
           :clutter-color-copy
           :clutter-color-new
           :clutter-color-free
           :clutter-color-equal
           :clutter-color-hash
           :clutter-stage-manager-get-default
           :clutter-stage-manager-get-default-stage
           :clutter-stage-managet-set-default-stage)
  (:documentation
   "utter-cl: The utter CL bindings for Clutter"))
