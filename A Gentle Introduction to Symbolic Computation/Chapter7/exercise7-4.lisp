(defun greater-than-five-p (x)
	(> x 5))

(mapcar #'greater-than-five-p '(2 0 3 4 0 -5 -6))