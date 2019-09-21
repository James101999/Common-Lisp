(defun factorial (n)
	(cond ((zerop n) 1)
		   (t (/ (factorial (+ n 1)) (+ n 1)))))