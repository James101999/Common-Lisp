(defun arith-eval (op)
	(cond ((null op) 0)
		  ((numberp (first op))))