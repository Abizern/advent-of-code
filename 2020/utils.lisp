(defpackage :aoc-20-utils
  (:use :cl)
  (:export :input-file-pathname)
  (:documentation "Common convenience utilities"))

(in-package :aoc-20-utils)

(defun expand-filename (n)
  (format nil "inputs/day~2,'0d.txt" n))

(defun input-file-pathname (n)
  (asdf:system-relative-pathname 'aoc-20 (expand-filename n)))