(defun compare-lengths (x y)
	(cond ((and (null x) (null y)) 'SAME-LENGTH)
		  ((and (< (length x) (length y)) 
		  	(and (not (null x)) (not (null y)))) 'SECOND-IS-LOONGER)
		  ((and (< (length y) (length x))
		  	(and (not (null x)) (not (null y)))) 'FIRST-IS-LONGER)
		   (t (compare-lengths (rest x) (rest y)))))

(defun compare-lengths-2 (x y)
	(cond ((and (null x) (null y)) 'SAME-LENGTH)
		  ((null y) 'FIRST-IS-LONGER)
		  ((null x) 'SECOND-IS-LONGER)
		   (t (compare-lengths (rest x) (rest y)))))