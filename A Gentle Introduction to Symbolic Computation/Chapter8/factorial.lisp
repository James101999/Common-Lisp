(defun fact (n)
	(cond ((zerop n) 1)
		   (t (* n (fact (- n 1))))))