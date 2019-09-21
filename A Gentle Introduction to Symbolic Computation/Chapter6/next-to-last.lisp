(defun next-to-last (x)
	(cadr (reverse x)))

(defun next-to-last-2 (x)
	(nth (- (length x) 2) x))