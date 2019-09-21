;;; Recursive version of assoc

(setf french
	'((one un)
	  (two deux)
	  (three tres)))

(defun rec-assoc (c ls)
	(cond ((null ls) nil) ; if list is empty return nil
		  ((equal c (caar ls)) (car ls)) ; if c is equal to the
		  								 ; first element of the
		  								 ; list of list
		  								 ; return the first list
		  (t (rec-assoc c (rest ls)))))  ; else return the rest of
										 ; the recursive function