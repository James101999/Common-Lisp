;;; Function that adds up all the numbers in a list

(defun add-up (ls)
	(cond ((null ls) 0)  		 ; returns 0 if list is empty, 
		(t (+ (first ls) (add-up (rest ls)))))) 			   		 
								 ; a 1 element list will 
						  		 ; return itself 	 
		   				   		 
		   				   		 ; take the first number
		   				   		 ; in the list and add it 
		   				   		 ; to the recursive function
		   				   		 ; of the rest of the list	