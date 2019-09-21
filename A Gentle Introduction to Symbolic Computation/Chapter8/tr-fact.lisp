(defun tr-fact (n)
	(tr-fr n 1))

(defun tr-fr (n result)
	(cond ((zerop n) result)
		   (t (tr-fr (- n 1) (* n result)))))