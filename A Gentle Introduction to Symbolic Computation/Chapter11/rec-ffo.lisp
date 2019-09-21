(defun rec-ffo (x)
	"Recursively find first odd number in a list."
	(cond ((null x) nil)
		  ((oddp (first x)) (first x))
		   (t (rec-ffo (rest x)))))

(defun it-ffo (list-of-numbers)
	"Iteratively find first odd number in a list."
	(dolist (e list-of-numbers)
		(if (oddp e) (return e))))