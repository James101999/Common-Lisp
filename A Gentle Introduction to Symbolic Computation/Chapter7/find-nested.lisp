(defun find-nested (x)
	(find-if #'(lambda (k) 	
				(not (equal (first k) nil)))
	x))
;;; or
(defun find-nested-2 (x)
	(find-if #'consp x))