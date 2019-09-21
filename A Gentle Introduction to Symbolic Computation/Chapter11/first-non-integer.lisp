(defun first-non-integer (x)
	"Return the firs tnon-integer element of X."
	(do* ((z x (rest z))
		  (z1 (first z) (first z)))
		 ((null z) 'none)
	  (unless (integerp z1)
	  	(return z1))))

(defun first-non-integer-dolist (x)
	(let ((result 'none))
		(dolist (element x result)
			(unless (integerp element)
				(return element)))))