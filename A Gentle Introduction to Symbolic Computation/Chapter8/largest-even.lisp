(defun largest-even (ls)
	(cond ((null ls) 0)
		  ((evenp (first ls))
		  	(max (first ls) (largest-even (cdr ls))))
		   (t (largest-even (cdr ls)))))