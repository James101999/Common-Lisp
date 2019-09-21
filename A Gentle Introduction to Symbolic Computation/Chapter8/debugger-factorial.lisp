(defun fact (n)
	(cond ((zerop n) (break "N is zero."))
		   (t (* n (fact (- n 1))))))