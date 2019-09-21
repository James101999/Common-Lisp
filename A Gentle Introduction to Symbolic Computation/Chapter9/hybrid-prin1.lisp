(defun hybrid-prin1 (ls)
	(cond ((atom ls) (format t "~S" ls)) 
		  ((listp (cdr ls)) ls)
		  ((null (cdr ls)) (format t ")"))
		   (t  (format t "(")
		   	   (hybrid-prin1 (car ls))
		   	   (format t " . ")
		   	   (hybrid-prin1 (cdr ls))
		   	   (format t ")"))))

	