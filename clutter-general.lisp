(in-package :utter-cl)

(defcenum clutter-init-error
  (:success 1)
  (:error-unknown 0)
  (:error-threads -1)
  (:error-backend -2)
  (:error-internal -3))

(defcfun clutter-init clutter-init-error
  (argc (:pointer :int))
  (argv (:pointer (:pointer (:pointer :char)))))

(defcfun clutter-main :void)
