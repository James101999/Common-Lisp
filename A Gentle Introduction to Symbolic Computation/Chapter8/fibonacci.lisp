(defun combine (n1 n2)
	(cond ((zerop n1) n2)
		  ((zerop n2) n1)
		   (t (+ (combine n1 0)
		   		 (combine 0 n2)))))

(defun fib (n)
	(cond ((equal n 0) 1)
		  ((equal n 1) 1)
		  (t (combine (fib (- n 1))
	   	    	(fib (- n 2))))))