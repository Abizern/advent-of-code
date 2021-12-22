(defpackage :aoc-21-1
 (:use :cl)
 (:documentation "--- Day 1: Sonar Sweep ---"))

(in-package :aoc-21-1)

(defparameter *raw-input* (mapcar #'parse-integer (uiop:read-file-lines "day01.txt")))


(defparameter +sample+ '(199
200
208
210
200
207
240
269
260
263))



(defun count-increasing (n list)
  "given a List and a window size N will return the count of the number of times successive windows of length N will sum to an increasing number"
  (loop for i in list
        for j in (nthcdr n list)
        counting (> j i) into count
        finally (return count)))

(defun part1 (&optional (input *raw-input*)) ;; -> 1696
  (count-increasing 1 input))

(defun part2 (&optional (input *raw-input*)) ;; -> 1737
  (count-increasing 3 input))
