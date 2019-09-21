(defun square-talk (n)
	(format t "~&~S squared in ~s" n (* n n)))

(mapcar #'square-talk '(1 2 3 4 5))
