(defun count-down (n)
	(cond ((zerop n) nil)
		   (t (cons n (count-down (- n 1))))))

(defun applicative-fact (n)
	(reduce #'* (count-down n)))

(defun count-down-2 (n)
	(cond ((< n 0) nil)
		   (t (cons n (count-down-2 (- n 1))))))

(defun count-down-3 (n)
	(cond ((zerop n) (list 0))
		   (t (cons n (count-down-3 (- n 1))))))
