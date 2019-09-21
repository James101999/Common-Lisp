(defun bad-style (n)
	(format t "~&N is ~S." n)
	(decf n 2)
	(format t "~&Now N is ~S." n)
	(decf n 2)
	(format t "~&Now N is ~S." n)
	(list 'result 'is (* n (- n 1))))

(bad-style 9)

(defun good-style (n)
	(let* ((p (- n 2))
		   (q (- p 2)))
		(format t "~&N is ~S." n)
		(format t "~&P is ~S." p)
		(format t "~&Q is ~S." q)
		(list 'result 'is (* q (- q 1)))))

(good-style 9)