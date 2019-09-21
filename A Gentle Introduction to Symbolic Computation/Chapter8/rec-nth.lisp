;;; Recursive version of nth

(defun rec-nth (n ls)
	(cond ((null ls) nil)	; if list is empty return nil
		  ((zerop 0) (first ls)) ; if n equals 0, return the
		  						   ; first element of the list
		  (t (rec-nth (- n 1) (rest ls))))) ; otherwise, 
									; return the recursive function
									; that decrements 1 and returns the
									; rest of the list.