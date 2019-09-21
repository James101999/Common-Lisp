(defun huge (n)
	(huge-recursively n 1))

(defun huge-recursively (n pow)
	(cond ((> pow n) 1)
		   (t (* n (huge-recursively n (+ pow 1))))))