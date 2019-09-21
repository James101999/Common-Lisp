;;; A recursive version of the member function

(defun rec-member (c ls)
	(cond ((null ls) nil)	; if list is empty return nil
		  ((equal c (first ls)) ls) ; if the input is equal to
		  							; the first part of the list
		  							; return it along the list
		   (t (rec-member c (rest ls))))) ; else get the rest of
										; the recursive function