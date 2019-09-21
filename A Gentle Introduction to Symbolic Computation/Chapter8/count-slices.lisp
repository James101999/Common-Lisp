(defun count-slices (loaf)
	(cond ((null loaf) 0)
		(t (+ 1 (count-slices (rest loaf))))))