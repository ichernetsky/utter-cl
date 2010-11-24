(in-package :utter-cl)

(defcfun clutter-color-copy gpointer
  (color gpointer))

(defcfun clutter-color-new gpointer
  (red guint8)
  (green guint8)
  (blue guint8)
  (alpha guint8))

(defcfun clutter-color-free :void
  (color gpointer))

(defcfun clutter-color-equal gboolean
  (v1 gpointer)
  (v2 gpointer))

(defcfun clutter-color-hash guint
  (v gpointer))
