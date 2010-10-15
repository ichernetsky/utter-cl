(in-package :utter-glib)

(defparameter *glib-required-version* '(2 24))

(defcvar (*glib-major-version* :read-only t :library glib) guint)
(defcvar (*glib-minor-version* :read-only t :library glib) guint)
(defcvar (*glib-micro-version* :read-only t :library glib) guint)

(defun glib-check-version (major minor &optional (micro 0))
  (or (> *glib-major-version* major)
      (and (= *glib-major-version* major)
           (> *glib-minor-version* minor))
      (and (= *glib-major-version* major)
           (= *glib-minor-version* minor)
           (>= *glib-micro-version* micro))))

(define-condition glib-version-mismatch (error)
  ((required-version :initarg :required-version)
   (actual-version :initarg :actual-version))
  (:report (lambda (c s)
             (format s "Required version of Glib is at least ~A, but the installed one is ~A"
                     (slot-value c 'required-version)
                     (slot-value c 'actual-version)))))

(defun ensure-glib-of-right-version ()
  (destructuring-bind (major minor &optional (micro 0)) *glib-required-version*
    (unless (glib-check-version major minor micro)
      (restart-case
          (error 'glib-version-mismatch
                 :required-version (format nil "~A.~A.~A" major minor micro)
                 :actual-version (format nil "~A.~A.~A"
                                         *glib-major-version*
                                         *glib-minor-version*
                                         *glib-micro-version*))
        (ignore () :report "Ignore version mismatch" nil)))))

(ensure-glib-of-right-version)
