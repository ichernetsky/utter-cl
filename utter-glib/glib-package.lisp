(defpackage :utter-glib
  (:use :cl :cffi :utter-std)
  (:export :gpointer
           :gchar
           :guchar
           :gint
           :guint
           :guint
           :gshort
           :gushort
           :glong
           :gulong
           :gint8
           :guint8
           :gint16
           :guint16
           :gint32
           :guint32
           :gint64
           :guint64
           :gboolean
           :gfloat
           :gdouble
           :gsize
           :gssize
           :goffset
           :gintptr
           :guintptr
           :*glib-required-version*
           :*glib-major-version*
           :*glib-minor-version*
           :*glib-micro-version*
           :glib-check-version
           :glib-version-mismatch
           :ensure-glib-of-right-version
           :g-thread-init
           :g-thread-get-initialized)
  (:documentation
   "utter-glib: The utter CL bindings for Glib"))
