(defpackage :aoc-2015-01
  (:use :cl)
  (:export #:part1
           #:part2)
  (:documentation ""))

(in-package :aoc-2015-01)

(defparameter *raw-input* (uiop:read-file-string (merge-pathnames "input.txt")))

(defun part1 (&optional (input *raw-input*))
  (loop for c across input
        counting (char= c #\() into up
        counting (char= c #\)) into down
        finally (return (- up down)))
  )

(defun part2 (&optional (input *raw-input*))
  (loop for c across input
        for i from 1
        with floor =  0
                  do (if (char= c #\()
                       (incf floor 1)
                       (decf floor 1))
                   (when (= floor -1)
                     (return i))
                   finally (return floor)
        )
  )

(defun test-part1 ()
  (= (part1) 232))

(defun test-part2 ()
  (= (part2) 1783))

