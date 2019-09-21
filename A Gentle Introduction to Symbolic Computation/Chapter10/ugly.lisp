(defun ugly (x y)
	(when (> x y)
		(setf temp y)
		(setf y x)
		(setf x temp))
	(setf avg (/ (+ x y) 2.0))
	(setf pct (* 100 (/ avg y)))
	(list 'average avg 'is
		pct 'percent 'of 'max y))

(defun good (x y)
	(let* ((biggest (max x y))
		   (smallest (min x y))
		   (avg (/ (+ x y) 2.0))
		   (pct (* 100 (/ avg y))))
			(list 'average avg 'is 
				pct 'percent 'of 'max y)))