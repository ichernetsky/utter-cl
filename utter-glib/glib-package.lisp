(defpackage :utter-glib
  (:use :cl :cffi)
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
           :*glib-major-version*
           :*glib-minor-version*
           :*glib-micro-version*)
  (:documentation
   "utter-glib: The utter CL bindings for Glib"))
