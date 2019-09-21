(defun launch (n)
	(do ((cnt n (- cnt 1)))
		((zerop cnt) (format t "Blast off!"))
	  (format t "~S..." cnt)))

(defun launch-2 (n)
	(dotimes (cnt n)
		(format t "~S..." (- n cnt))
		(if (equal cnt (- n 1)) (return (format t "Blast off!")))))