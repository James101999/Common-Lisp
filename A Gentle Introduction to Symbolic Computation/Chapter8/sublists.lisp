(defun my-sublists (ls)
	(cond ((null ls) nil)
		   (t (cons ls (my-sublists (cdr ls))))))