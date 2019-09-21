(defun my-intersection (x y)
	(cond ((null x) nil)  ; if x and y are empty
										 ; return nil
		  ((member (first x) y) ; if the first
		  			; element of x is a member of list y
		  	(cons (first x)  ; add the first element of x
		  		(my-intersection (rest x) y))) 
		  		; to the recursive
		  			; function that takes the rest of x, 
		  			;and the list y as input
		   (t (my-intersection (rest x) y)))) ; else, 
				;take the rest of x and y as input.