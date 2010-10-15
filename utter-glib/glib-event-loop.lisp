(in-package :utter-glib)

(defcfun g-idle-add-full guint
  (priority gint)
  (function :pointer)
  (data gpointer)
  (notify :pointer))
