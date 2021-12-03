(defsystem "advent-of-code"
  :version "0.1.0"
  :author "Abizer Nasir"
  :license "MIT"
  :depends-on (:alexandria :split-sequence :cl-ppcre)
  :serial t
  :components #.(append '((:file "inputs"))
                        (loop for year in '(2021)
                              append (loop for n from 1 to 25
                                           collect (list :file
                                                         (format nil "~d/day~2,'0d" year n)))))
  :description "Solutions to Advent of Code problems"
  :in-order-to ((test-op (test-op "advent-of-code/tests"))))

(defsystem "advent-of-code/tests"
  :author ""
  :license ""
  :depends-on ("advent-of-code"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for advent-of-code"
  :perform (test-op (op c) (symbol-call :rove :run c)))
