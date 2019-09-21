(defun last-element (x)
	(first (last x)))

(defun last-element-2 (x)
	(first (reverse x)))

(defun last-element-3 (x)
	(nth (- (length x) 1) x))
