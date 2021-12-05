(uiop:define-package :advent-of-code/all
  (:nicknames :advent-of-code)
  (:use :cl)
  (:import-from :advent-of-code/2021/all)
  (:export :run-all)
  (:documentation "The main runner for all solutions. Probably best not to run this"))

(in-package :advent-of-code/all)

(defun run-all ()
  (advent-of-code/2021/all::run-all))