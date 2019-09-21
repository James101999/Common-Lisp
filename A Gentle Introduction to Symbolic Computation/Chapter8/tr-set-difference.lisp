(defun tr-set-difference (x y)
	(tr-sdrc x y nil))

(defun tr-sdrc (x y result)
	(cond ((null x) result)
		  ((member (first x) y)
		  	(tr-sdrc (cdr x) y result))
		   (t (tr-sdrc (cdr x) y 
		   	(cons (first x) result)))))