(in-package :utter-glib)

(defcfun g-idle-add-full guint
  (priority gint)
  (fn :pointer)
  (data gpointer)
  (notify :pointer))
