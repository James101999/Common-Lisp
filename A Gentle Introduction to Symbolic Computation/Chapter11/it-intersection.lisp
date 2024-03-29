(defun it-intersection (x y)
	(let ((result-set nil))
		(dolist (element x result-set)
			(when (member element y)
				(push element result-set)))))

(defun it-fixed-intersection (x y)
	(let ((result-set nil))
		(dolist (element x (reverse result-set))
			(when (member element y)
				(push element result-set)))))

(defun it-intersection-2 (x y)
	(do ((x1 x (rest x1))
		 (result nil (if (member (first x1) y)
		 				 (cons (first x1) result)
		 				 result)))
		((null x1) result)))

(defun it-intersection-3 (x y)
	(do ((x1 x (rest x1))
		 (result nil))
		((null x1) result)
	  (when (member (first x1) y)
	  	(push (first x1) result))))