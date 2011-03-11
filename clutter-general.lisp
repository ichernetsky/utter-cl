(in-package :utter-cl)

(defcenum clutter-init-error
  (:success 1)
  (:error-unknown 0)
  (:error-threads -1)
  (:error-backend -2)
  (:error-internal -3))

(defcfun (%clutter-init "clutter_init") clutter-init-error
  (argc (:pointer :int))
  (argv (:pointer (:pointer (:pointer :char)))))

(defun clutter-init ()
  (%clutter-init (null-pointer) (null-pointer)))

(at-init "clutter-init"
  (clutter-init))

(defcfun (%clutter-main "clutter_main") :void)

(defun clutter-main ()
  (with-clutter-threads
    (%clutter-main)))

(defcfun clutter-main-quit :void)

(defvar *main-thread* nil)
(defvar *main-thread-level* 0)
(defvar *main-thread-lock* (bt:make-lock "utter-cl main thread's lock"))

(defun ensure-clutter-main ()
  (when (and *main-thread* (bt:thread-alive-p *main-thread*))
    (setf *main-thread* nil))
  (unless *main-thread*
    (setf *main-thread* (bt:make-thread (lambda () (clutter-main))
                                        :name "utter-cl main thread")
          *main-thread-level* 0))
  (incf *main-thread-level*))

(defun join-clutter-main ()
  (when *main-thread*
    (bt:join-thread *main-thread*)))

(defun leave-clutter-main ()
  (bt:with-lock-held (*main-thread-lock*)
    (decf *main-thread-level*)
    (when (zerop *main-thread-level*)
      (clutter-main-quit))))
