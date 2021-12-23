(ql:quickload :cl-ppcre)
(ql:quickload :alexandria)

(defpackage :aoc-20-2
  (:use :cl)
  (:import-from :cl-ppcre :register-groups-bind)
  (:import-from :alexandria :xor)
  (:documentation "--- Day 2: Password Philosophy ---"))

(in-package #:aoc-20-2)

(defun parse-input (line)
  (register-groups-bind ((#'parse-integer minimum maximum)
                         (#'character c)
                         password)
      ("^\(\\d+\)-\(\\d+\) \(\\w\): \(\\w+\)$" line)
    (list minimum maximum c password)))

(defparameter *input* (mapcar #'parse-input (uiop:read-file-lines "day02.txt")))

(defun valid-by-count-p (line)
  (destructuring-bind (min max c password) line
    (let ((num (count c password)))
      (and (>= num min)
           (<= num max)))))

(defun valid-by-position-p (line)
  (destructuring-bind (min max c password) line 
                        (let ((first (elt password (- min 1)))
                              (second (elt password (- max 1))))
                          (xor (equal c first) (equal c second)))))


(defun part1 (&optional (input *input*)) ;; => 396
  (length (remove-if #'null (mapcar #'valid-by-count-p input))))

(defun part2 (&optional (input *input*)) ;; => 428
  (length (remove-if #'null (mapcar #'valid-by-position-p input))))

