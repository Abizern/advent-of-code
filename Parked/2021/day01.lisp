(defpackage :advent-of-code/2021/day01
 (:use :cl)
 (:documentation ""))

(in-package :advent-of-code/2021/day01)

(defparameter +input-file+
  (asdf:system-relative-pathname
   'advent-of-code
   (format nil "Inputs/2021/day01.txt")))

(defparameter +input+ (mapcar #'parse-integer (uiop:read-file-lines +input-file+)))



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

(defun title ()
  "-- Enter Title Here --"
  "--- Day 1: Sonar Sweep ---")

(defun part1 (&optional (input +input+)) ;; -> 1696
  (count-increasing 1 input))

(defun part2 (&optional (input +input+)) ;; -> 1737
  (count-increasing 3 input))

(defun count-increasing (n list)
  "given a List and a window size N will return the count of the number of times successive windows of length N will sum to an increasing number"
  (loop for i in list
        for j in (nthcdr n list)
        counting (> j i) into count
        finally (return count)))
