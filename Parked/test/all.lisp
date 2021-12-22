(uiop:define-package :advent-of-code/test/all
  (:nicknames :aoc-test)
  (:use :cl :fiveam)
  (:export :run-tests))

;; Don't expect to have anything in here, Ideally, macros might be a better way to generate tests.

(in-package :advent-of-code/test/all)

(def-suite* aoc-all
  :description "The root suite for Advent of Code tests")

(defun run-tests ()
  (run! 'aoc-all))

(fiveam:in-suite aoc-all)

(test smoke-test
  (is (= 1 (* 1 1)))
  (is (= 4 (* 2 2))))
