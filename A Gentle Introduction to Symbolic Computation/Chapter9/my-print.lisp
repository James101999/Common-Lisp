(defun my-print (x)
	(terpri)
	(prin1 x)
	(princ " ")
	x)

(mapcar #'my-print '(0 1 2 3 4))