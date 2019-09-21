;;; Recursive Function that finds the first odd number in a list

(defun find-first-odd (ls)
	(cond ((null ls) nil)
		  ((oddp (first ls)) (first ls))
		   (t (find-first-odd (rest ls)))))