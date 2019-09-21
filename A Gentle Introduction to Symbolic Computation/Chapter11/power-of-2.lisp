(defun power-of-2 (n)
	(let ((result 1))
		(dotimes (i n result)
			(incf result result))))

(defun power-of-2-do (n)
	(do ((result 1 (incf result result))
		 (i n (decf i)))
		 ((zerop i) result)))