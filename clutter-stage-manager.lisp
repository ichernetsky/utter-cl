(in-package :utter-cl)

(defcfun clutter-stage-manager-get-default gpointer)

(defcfun clutter-stage-manager-get-default-stage gpointer
  (stage-manager gpointer))

(defcfun clutter-stage-manager-set-default-stage :void
  (stage-manager gpointer)
  (stage gpointer))
