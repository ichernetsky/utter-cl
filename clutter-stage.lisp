(in-package :utter-cl)

(defcfun clutter-stage-get-default gpointer)

(defcfun clutter-stage-new gpointer)

(defcfun clutter-stage-is-default gboolean
  (stage gpointer))

(defcfun clutter-stage-set-color :void
  (stage gpointer)
  (color gpointer))

(defcfun clutter-stage-set-fullscreen :void
  (stage gpointer)
  (fullscreen gboolean))

(defcfun clutter-stage-get-fullscreen gboolean
  (stage gpointer))

(defcfun clutter-stage-show-cursor :void
  (stage gpointer))

(defcfun clutter-stage-hide-cursor :void
  (stage gpointer))

(defcenum clutter-pick-mode
  :clutter-pick-none
  :clutter-pick-reactive
  :clutter-pick-all)

(defcfun clutter-stage-get-actor-at-pos gpointer
  (stage gpointer)
  (pick-mode clutter-pick-mode)
  (x gint)
  (y gint))

(defcfun clutter-stage-ensure-current :void
  (stage gpointer))

(defcfun clutter-stage-ensure-viewport :void
  (stage gpointer))

(defcfun clutter-stage-set-key-focus :void
  (stage gpointer)
  (actor gpointer))

(defcfun clutter-stage-get-key-focus gpointer
  (stage gpointer))

(defcfun clutter-stage-set-use-alpha :void
  (stage gpointer)
  (use-alpha gboolean))

(defcfun clutter-stage-get-use-alpha gboolean
  (stage gpointer))

(defcfun clutter-stage-set-minimum-size :void
  (stage gpointer)
  (width guint)
  (height guint))
