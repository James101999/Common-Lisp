(defun find-first-atom (x)
	(cond ((atom x) x)
		   (t (find-first-atom (first x)))))