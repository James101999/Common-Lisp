(defun dot-product (ls1 ls2)
	(cond ((or (null ls1) (null ls2)) 0)
		   (t (+ (* (first ls1) (first ls2))
		   		(dot-product (rest ls1) (rest ls2))))))