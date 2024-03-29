(defun ffo-with-do (list-of-numbers)
	(do ((x list-of-numbers (rest x)))
		((null x) nil)
	  (if (oddp (first x)) (return (first x)))))

(defun ffo-with-do* (list-of-numbers)
	(do* ((x list-of-numbers (rest x))
		  (e (first x) (first x)))
		 ((null x) nil)
	  (if (oddp e) (return e))))

(defun ffo-with-do-error (x)
	(do ((z x (rest z))
		 (e (first x) (first z)))
		((null z) nil)
	   (if (oddp e) (return e))))