(defun bury (item n)
	(cond ((zerop n) item)
		   (t (list (bury item (- n 1))))))