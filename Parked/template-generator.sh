#!/bin/sh

if [ -n "$(git status --porcelain)" ]; then
    echo "Working directory is not clean, I'm not going to do anything!!"
    exit 1
fi

year=2021

echo "Generating files for ${year}"

day_numbers=$(seq -w 1 25)

echo $day_numbers

# Make empty input Files
mkdir -p "Inputs/${year}"

for day in $day_numbers; do
    touch "Inputs/${year}/day${day}.txt"
done

# Make empty Source Files
mkdir -p $year

cat>${year}/all.lisp <<EOF
(defpackage :advent-of-code/${year}/all
  (:use :cl)
  (:import-from :advent-of-code/${year}/day01)
  (:documentation "The main runner for all the year's solutions"))

(in-package :advent-of-code/${year}/all)

;; This should probably be a macro
(defun run-all ()
  (format nil "Hello Advent of Code ${year}"))
EOF

for day in $day_numbers; do
    cat>${year}/day${day}.lisp <<EOF
(defpackage :advent-of-code/${year}/day${day}
 (:use :cl)
 (:documentation ""))

(in-package :advent-of-code/${year}/day${day})

(defparameter +input-file+
  (asdf:system-relative-pathname
   'advent-of-code
   (format nil "Inputs/${year}/day${day}.txt")))

(defparameter +input+ (uiop:read-file-lines +input-file+))

(defparameter +title+ "")

(defparameter +sample+ '())

(defun title ()
  "-- Enter Title Here --")

(defun part1 (&optional (input +input+))
  )

(defun part2 (&optional (input +input+))
  )

EOF
done
