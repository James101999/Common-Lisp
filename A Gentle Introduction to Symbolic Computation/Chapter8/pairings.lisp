(defun pairings (x y)
	(cond ((and (null x) (null y)) nil)
		   (t (cons (list (first x) (first y))
		   	(pairings (rest x) (rest y))))))