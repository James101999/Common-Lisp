(defun combine (n1 n2)
	(cond ((zerop n1) n2)
		  ((zerop n2) n1)
		   (t (+ (combine n1 0)
		   		 (combine 0 n2)))))