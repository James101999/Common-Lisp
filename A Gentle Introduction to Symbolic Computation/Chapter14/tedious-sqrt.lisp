(defun tedious-sqrt (n)
	(dotimes (i n)
		(if (> (* i i) n) (return i))))

(time (tedious-sqrt 5000000))