(defsystem #:cl-cache-tables
           :name "cl-cache-tables"
           :version "0.0.1"
           :description "A wrapper around native hash-tables to facilitate
                        in-process caching of common lisp data structures."
           :author "Diogo Franco"
           :license "MIT"
           :serial t
           :components ((:file "package")
                        (:file "cl-cache-tables"))
           :in-order-to ((test-op (test-op #:cl-cache-tables/tests))))

(defsystem #:cl-cache-tables/tests
           :name "cl-cache-tables-tests"
           :version "0.0.1"
           :description "The tests for the cl-cache-tables system"
           :author "Diogo Franco"
           :defsystem-depends-on (#:prove-asdf)
           :depends-on (#:cl-cache-tables #:prove)
           :components ((:test-file "tests"))
           :perform (test-op (o c) (symbol-call :prove :run c)))
