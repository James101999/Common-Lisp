(defun left-half (ls)
	(left-half-recursively ls 1))

(defun left-half-recursively (ls n)
	(cond ((> n (length ls)) nil)
		   (t (cons (first ls)  
		   	(left-half-recursively (cdr ls) (+ n 1))))))