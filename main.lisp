(in-package :hunc-exp)

;; first define our web server on port 8080.
(defvar *server* (make-instance 'acceptor :port 8080))

;; then a initialization function to start it!!
(defun init ()
  (start *server*))

;; add a dispatcher for our hello-world function. this means every
;; requested made http://localhost:8080/ will invokde hello-world function.
(push (create-regex-dispatcher "^/$" 'hello-world) *dispatch-table*)

;; it's time to say "Hello World!!!"
(defun hello-world ()
  (with-html-output (*standard-output* nil :indent t)
    (:html
     (:head
      (:title "Page: Hello-World"))
     (:body
      (:h2 "Hello World!!")
      (:hr)))))
