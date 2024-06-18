(defstruct RECORD
  name score)

(defun Above (score list)
  (let ((new (make-list 0)))
    (dotimes (i (- 1 (length list)))
      (if (>= (record-score (elt list i)) score)
        (append new (elt list i))))

    (dotimes (i (1- (length new)))
      (do ((j i (1- j)))
          ((minusp j))

        (if (string< (record-name (elt new (1+ j))) (record-name (elt new j)))
            (rotatef (elt new (1+ j)) (elt new j))
            (return))))
new))
