(defun flip (x)
	(mapcar #'(lambda (n) 
		(if (equal n 'up) 'down 'up)) x))
