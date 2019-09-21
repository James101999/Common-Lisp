(defun tr-intersection (x y)
	(tr-inrc x y nil))

(defun tr-inrc (x y result)
	(cond ((null x) result)
		  ((member (first x) y)
		  	(tr-inrc (cdr x) y (cons (first x) result)))
		   (t (tr-inrc (cdr x) y result))))