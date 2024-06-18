(defstruct RECORD
   name score)

(defun sort-student-records (rec func)
  (dotimes (i (1- (length rec)))
    (do ((j i (1- j)))
        ((minusp j))

      (if (funcall func (elt rec (1+ j)) (elt rec j))
          (rotatef (elt rec (1+ j)) (elt rec j))
          (return))))i
rec)
;; lambda function returns either x or y depending on which one is true (x > y) returns x vice versa
