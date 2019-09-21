(defun analyze-profit (price commission-rate)
	(let* ((commission (* price commission-rate))
		   (result
		   	(cond ((> commission 100) 'rich)
		   		  ((< commission 100) 'poor))))
		(break "Value of RESULT is ~S" result)
		(format t "~&I predict you will be: ~S"
				result)
		result))

(defun average (x y)
	(unless (and (numberp x) (numberp y))
		(error "ARguments must be numbers:	~S, ~S"
			x y))
	(/ (+ x y) 2.0))