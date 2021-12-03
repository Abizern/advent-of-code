(defpackage advent-of-code/tests/main
  (:use :cl
        :advent-of-code
        :rove))
(in-package :advent-of-code/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :advent-of-code)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
