(defpackage :utter-cl
  (:use :cl :cffi :utter-std :utter-glib)
  (:export :clutter-threads-init
           :clutter-threads-enter
           :clutter-threads-leave
           :with-clutter-threads
           :clutter-threads-add-idle-full
           :clutter-init-error
           :clutter-init
           :clutter-main
           :clutter-main-quit
           :ensure-clutter-main
           :join-clutter-main
           :leave-clutter-main
           :clutter-color-copy
           :clutter-color-new
           :clutter-color-free
           :clutter-color-equal
           :clutter-color-hash
           :clutter-stage-get-default
           :clutter-stage-new
           :clutter-stage-is-default
           :clutter-stage-set-color
           :clutter-stage-set-fullscreen
           :clutter-stage-get-fullscreen
           :clutter-stage-show-cursor
           :clutter-stage-hide-cursor
           :clutter-pick-mode
           :clutter-stage-get-actor-at-pos
           :clutter-stage-ensure-current
           :clutter-stage-ensure-viewport
           :clutter-stage-set-key-focus
           :clutter-stage-get-key-focus
           :clutter-stage-set-use-alpha
           :clutter-stage-get-use-alpha
           :clutter-stage-set-minimum-size
           :clutter-stage-manager-get-default
           :clutter-stage-manager-get-default-stage
           :clutter-stage-managet-set-default-stage)
  (:documentation
   "utter-cl: The utter CL bindings for Clutter"))
