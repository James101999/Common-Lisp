(defun square-list (ls)
	(cond ((null ls) nil)
		   (t (cons (* (first ls) (first ls)) 
		   	(square-list (rest ls))))))