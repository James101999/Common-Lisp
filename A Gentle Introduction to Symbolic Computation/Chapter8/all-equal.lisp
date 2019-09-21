(defun all-equal (ls)
	(cond ((< (length ls) 2) t)
		  ((not (equal (first ls) (second ls))) nil)
		   (t (all-equal (rest ls)))))