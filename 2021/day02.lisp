(ql:quickload :cl-ppcre)

(defpackage :aoc-21-2
  (:use :cl)
  (:import-from :cl-ppcre :register-groups-bind)
  (:documentation "--- Day 2: Dive! ---"))

(in-package :aoc-21-2)

(defparameter *raw-input* (uiop:read-file-lines "day02.txt"))

(defun parse-line (line)
  (register-groups-bind (instruction
                         (#'parse-integer value))
      ("^\(\\w+\) \(\\d+\)$" line)
    (cons instruction value)))

(defparameter *input* (mapcar #'parse-line *raw-input*))

(defparameter +sample+ '())

(defun loop-part-1 (instructions)
  )


(defun part1 (&optional (input *input*))
  )

(defun part2 (&optional (input *input*))
  )                                     