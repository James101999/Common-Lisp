(defun add-to-end-1 (x y)
	(append x (list y)))

(defun add-to-end-2 (x y)
	(reverse (cons y (reverse x))))