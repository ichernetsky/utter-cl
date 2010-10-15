(in-package :utter-glib)

(defcfun g-thread-init :void
  (vtable gpointer))

(defcfun g-thread-get-initialized gboolean)

(at-init "init-glib-threads"
  (unless (g-thread-get-initialized)
    (g-thread-init (null-pointer))))
