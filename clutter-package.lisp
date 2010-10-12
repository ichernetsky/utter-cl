(defpackage :utter-cl
  (:use :cl :cffi)
  (:export :clutter-threads-init
           :clutter-threads-enter
           :clutter-threads-leave
           :clutter-init-error
           :clutter-init
           :clutter-main)
  (:documentation
   "utter-cl: The utter CL bindings for Clutter"))
