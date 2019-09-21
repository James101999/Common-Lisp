(defun add-to-end (x y)
	(reverse (cons y (reverse x))))

(add-to-end '(a b c) 'd)