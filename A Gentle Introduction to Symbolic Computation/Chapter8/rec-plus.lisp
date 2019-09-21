;;; Recursive definition of the + operator

(defun add1 (x)
	(+ x 1))

(defun sub1 (x)
	(- x 1))

(defun rec-plus (x y)
	(cond ((zerop y) x) ; if y = 0, return x
		   (t (rec-plus (add1 x) (sub1 y))))) ; else if x+y =
				x + 1 + y - 1