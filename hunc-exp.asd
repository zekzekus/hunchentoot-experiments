(in-package :cl-user)

(defpackage :hunc-exp-asd
  (:use :cl :asdf))

(in-package :hunc-exp-asd)

(defsystem :hunc-exp
  :serial t
  :components ((:file "packages")
               (:file "main"))
  :depends-on (:hunchentoot :cl-who))