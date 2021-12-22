(defpackage :advent-of-code/2021/day03
 (:use :cl)
 (:documentation ""))

(in-package :advent-of-code/2021/day03)

(defparameter +input-file+
  (asdf:system-relative-pathname
   'advent-of-code
   (format nil "Inputs/2021/day03.txt")))

(defparameter +input+ (uiop:read-file-lines +input-file+))

(defparameter +sample+ '())

(defun title ()
  "-- Enter Title Here --")

(defun part1 (&optional (input +input+))
  )

(defun part2 (&optional (input +input+))
  )

