(defpackage :aoc-20-25
  (:use :cl)
  (:documentation "--- Day 25: Combo Breaker ---"))

(in-package #:aoc-20-25)

(defparameter *input* (mapcar #'parse-integer
                              (uiop:read-file-lines "day25.txt")))
(defparameter *card-key* (car *input*))
(defparameter *door-key* (cadr *input*))


(defun loop-estimate (n)
  (do ((x 1 (mod (* 7 x) 20201227))
       (l 0 (+ 1 l)))
      ((= x n) l)))

(defun transform (number loop)
  (do ((x 1 (mod (* number x) 20201227))
       (l loop (- l 1)))
      ((= l 0) x)))

(defun part1 (&optional (door-key *door-key*) (card-key *card-key*))
  (transform door-key
             (loop-estimate card-key))); => 181800