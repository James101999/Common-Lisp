(defun every-other (ls)
	(cond ((null ls) nil)
		   (t (cons (car ls) (every-other (cddr ls))))))