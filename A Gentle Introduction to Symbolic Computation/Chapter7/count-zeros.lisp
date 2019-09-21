(remove-if-not #'zerop '(34 0 0 95 0))

(defun count-zeros (x)
	(length (remove-if-not #'zerop x)))

(count-zeros '(34 0 0 95 0))

(count-zeros '(1 0 63 0 38))

(count-zeros '(0 0 0 0 0))

(count-zeros '(1 2 3 4 5))

