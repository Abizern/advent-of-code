(defsystem :advent-of-code
  :name "Advent of Code"
  :version "0.0.1"
  :author "Abizer Nasir"
  :license "MIT"
  :class :package-inferred-system
  :defsystem-depends-on (:asdf-package-system)
  :depends-on (:advent-of-code/all)
  :description "Solutions to Advent of Code problems"
  :in-order-to ((test-op (test-op :advent-of-code/test)))
  :perform (test-op (op c)
                    (symbol-call :fiveam :run!
                                      (find-symbol* :aoc-all :advent-of-code/test/all))))

(defsystem :advent-of-code/test
  :class :package-inferred-system
  :defsystem-depends-on (:asdf-package-system)
  :depends-on (:advent-of-code :advent-of-code/test/all))

(register-system-packages :advent-of-code/all '(:aoc))
(asdf:register-system-packages :advent-of-code/test/all '(:aoc-test))