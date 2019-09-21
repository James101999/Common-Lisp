(defun it-reverse (ls)
	(let ((result nil))
		(dolist (element ls result)
			(push element result))))