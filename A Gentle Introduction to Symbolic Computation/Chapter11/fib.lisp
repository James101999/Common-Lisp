(defun fibonacci (n)
	(let ((result 0)
		  (n0 0)
		  (n1 1))
		(dotimes (i n result)
			(setf result (+ n0 n1))
			(setf n0 n1)
			(setf n1 result))))