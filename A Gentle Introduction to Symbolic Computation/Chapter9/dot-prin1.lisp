(defun dot-prin1 (ls)
	(cond ((atom ls) (format t "~S" ls)) 
		   (t  (format t "(")
		   	   (dot-prin1 (car ls))
		   	   (format t " . ")
		   	   (dot-prin1 (cdr ls))
		   	   (format t ")"))))

	