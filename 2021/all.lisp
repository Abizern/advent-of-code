(defpackage :advent-of-code/2021/all
  (:use :cl)
  (:import-from :advent-of-code/2021/day01)
  (:documentation "The main runner for all the year's solutions"))

(in-package :advent-of-code/2021/all)

;; This should probably be a macro
(defun run-all ()
  (format nil "Hello Advent of Code 2021"))
