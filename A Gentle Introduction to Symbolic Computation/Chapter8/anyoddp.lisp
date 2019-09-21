(defun anyoddp (x)
	(cond ((null x) nil)
		  ((oddp (first x)) t)
		  (t (anyoddp (rest x)))))

(defun anyoddp-2 (x)
	(if (null x) nil
		(if (oddp (first x)) t
			(anyoddp (rest x)))))

(defun anyoddp-3 (x)
	(cond ((oddp (first x)) t)
		  (t (anyoddp (rest x)))))
