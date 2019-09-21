(defun c (n)
	(cond ((equal n 1) t)
		  ((evenp n) (c (/ n 2)))
		   (t (c (+ (* 3 n) 1)))))