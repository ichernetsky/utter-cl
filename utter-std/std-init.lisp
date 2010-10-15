(in-package :utter-std)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defvar *initializers-table* (make-hash-table :test 'equalp))
  (defvar *initializers* nil)

  (defun register-initializer (key fn)
    (unless (gethash key *initializers-table*)
      (setf (gethash key *initializers-table*) t
            *initializers* (nconc *initializers* (list fn)))))

  (defvar *finalizers-table* (make-hash-table :test 'equalp))
  (defvar *finalizers* nil)

  (defun register-finalizer (key fn)
    (unless (gethash key *finalizers-table*)
      (setf (gethash key *finalizers-table*) t
            *finalizers* (nconc *finalizers* (list fn))))))

(defun run-initializers ()
  (iter (for fn in *initializers*)
        (funcall fn)))

(defun run-finalizers ()
  (iter (for fn in *finalizers*)
        (funcall fn)))

#+sbcl
(pushnew 'run-initializers sb-ext:*init-hooks*)
#+sbcl
(pushnew 'run-finalizers sb-ext:*save-hooks*)

(defmacro at-init (key &body body)
  `(progn (register-initializer ,key (lambda () ,@body))
          ,@body))

(defmacro at-finalize (key &body body)
  `(register-finalizer ,key (lambda () ,@body)))
