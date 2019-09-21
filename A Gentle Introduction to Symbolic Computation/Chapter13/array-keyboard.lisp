(setf *hist-array* 0)
(setf *total-points* 0)

(defun new-histogram (bins)
	(setf *hist-array* (make-array bins :initial-element 0))
	(setf *total-points* (make-array bins :initial-element 0))
	(dotimes (i bins)
		(setf (aref *hist-array* i) i)))

(defun record-value (n)
	(if (<= 0 n 10)
		(setf (aref *total-points* n) 
			(incf (aref *total-points* n)))
		(format t "~&Not within range!")))

(defun print-hist-line (n)
	(dotimes (i n)
		(format t "~&~2S ~A~S~3A" 
		(aref *hist-array* i) "[" (aref *total-points* i) "]")
		(dotimes (j (aref *total-points* i))
			(format t "*"))))

(defun print-histogram ()
	(print-hist-line (length *hist-array*)))

(new-histogram 11)

(dotimes (i 200)
	(record-value (random 11)))

(print-histogram)