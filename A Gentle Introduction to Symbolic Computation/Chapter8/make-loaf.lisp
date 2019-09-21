(defun make-loaf (n)
	(if (zerop n) nil (cons 'X (make-loaf (- n 1)))))