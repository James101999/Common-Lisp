(defun it-fact (n)
	(let ((prod 1))
		(dotimes (i n prod)
			(setf prod (* prod (+ i 1))))))