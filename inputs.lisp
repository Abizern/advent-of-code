(defpackage :aoc-inputs
  (:use :cl)
  (:export :input-file-pathname)
  (:documentation "Convenience utilities for loading the input files"))

(in-package :aoc-inputs)

(defun input-file-pathname (year day)
  (asdf:system-relative-pathname 'advent-of-code
                                 (format nil "inputs/~d/day~2,'0d.txt" year day)))