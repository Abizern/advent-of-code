(ql:quickload :alexandria)

(defpackage :aoc-20-1
  (:use :cl)
  (:import-from :alexandria :map-combinations)
  (:documentation "--- Day 1: Report Repair ---"))

(in-package #:aoc-20-1)

(defparameter *input* (mapcar #'parse-integer
                              (uiop:read-file-lines "day01.txt")))

(defun solve1(list)
  (let ((result nil))
    (map-combinations
     (lambda (sublist)
       (when (= 2020 (reduce #'+ sublist))
         (setf result (reduce #'* sublist))))
     list :length 2) result))


(defun solve2(list)
  (let ((result nil))
    (map-combinations
     (lambda (sublist)
       (when (= 2020 (reduce #'+ sublist))
         (setf result (reduce #'* sublist))))
     list :length 3) result))

(defun combinations (sum length list)
  (let ((result nil))
    (map-combinations
     (lambda (sublist)
       (when (= sum (reduce #'+ sublist))
         (setf result (reduce #'* sublist))))
     list :length length) result))


;;; Specific solutions

(defun part1 (&optional (input *input*))
  (combinations 2020 2 input)) ; => 876459

(defun part2 (&optional (input *input*))
  (combinations 2020 3 input)) ; => 116168640