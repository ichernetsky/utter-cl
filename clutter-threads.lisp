(in-package :utter-cl)

(defcfun clutter-threads-init :void)
(defcfun clutter-threads-enter :void)
(defcfun clutter-threads-leave :void)

(at-init "init-clutter-threads"
  (clutter-threads-init))
