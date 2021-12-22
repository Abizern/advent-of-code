(ql:quickload :cl-ppcre)

(defpackage :aoc-20-2
  (:use :cl)
  (:documentation "--- Day 2: Password Philosophy ---"))

(in-package #:aoc-20-2)

(defparameter *input* (uiop:read-file-lines "day02.txt"))