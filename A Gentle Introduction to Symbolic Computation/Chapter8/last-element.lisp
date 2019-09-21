;;; Function that returns the last element of a list

(defun last-element (x)
	(cond ((equal (length x) 1) (car x))
		   (t (last-element (rest x)))))