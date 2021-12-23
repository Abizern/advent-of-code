(defpackage :aoc-20-3
  (:use :cl)
  (:documentation "--- Day 3: Toboggan Trajectory ---"))

(in-package #:aoc-20-3)

(defparameter *input* (uiop:read-file-lines "day03.txt"))

(defun count-collisions (trees right down)
  (let ((collisions 0)
        (width (length (car trees)))
        (height (length trees)))
    (do ((x right (mod (+ x right) width))
         (y down (+ y down)))
        ((>= y height) collisions)
      (if (char= #\# (elt (nth y trees) x))
          (setf collisions (+ 1 collisions))))))

(defun part1 (&optional (input *input*)) ;; => 280
  (count-collisions input 3 1))

(defun part2 (&optional (input *input*)) ;; => 4355551200
  (* (count-collisions input 1 1)
     (count-collisions input 3 1)
     (count-collisions input 5 1)
     (count-collisions input 7 1)
     (count-collisions input 1 2)))