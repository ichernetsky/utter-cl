(in-package :utter-cl)

(defcfun clutter-threads-init :void)
(defcfun clutter-threads-enter :void)
(defcfun clutter-threads-leave :void)

(at-init "init-clutter-threads"
  (clutter-threads-init))

(defmacro with-clutter-threads (&body body)
  `(progn
     (clutter-threads-enter)
     (unwind-protect
          (progn ,@body)
       (clutter-threads-leave))))

(defcfun clutter-threads-add-idle-full guint
  (priority gint)
  (fn :pointer)
  (data gpointer)
  (notify :pointer))
