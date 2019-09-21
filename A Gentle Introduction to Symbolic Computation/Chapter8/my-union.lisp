(defun my-union (x y)
	(cond ((and (null x) (null y)) nil)
		   (t (remove-duplicates 
		   		(append x y 
		   		(my-union (cdr x) (cdr y)))))))

(defun my-union-2 (x y)
	(append x (my-union-recursively-2 x y)))

(defun my-union-recursively-2 (x y)
	(cond ((null y) nil)
		  ((member (first y) x)
		  	(my-union-recursively-2 x (cdr y)))
		   (t (cons (first y) (my-union-recursively-2 x (cdr y))))))