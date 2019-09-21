;;; Function that takes a number as input and returns a list of
;;; many HAs

(defun laugh (n)
	(cond ((zerop n) nil) ;; return nil of n is zero
		   (t (cons 'ha (laugh (- n 1)))))) ; else
		; cons 'ha on the recursive function laugh, and
		; decrement n by 1