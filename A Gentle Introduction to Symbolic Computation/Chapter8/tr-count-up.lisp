(defun tr-count-up (n)
	(tr-cur n nil))

(defun tr-cur (n result)
	(cond ((zerop n) result)
		   (t (tr-cur (- n 1) 
		   	(cons n result)))))
