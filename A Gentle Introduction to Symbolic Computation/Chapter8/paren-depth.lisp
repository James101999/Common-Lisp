(defun paren-depth (tree)
	(cond ((null tree) 1) ; if tree is empty count it as
						  ; a parentthesis
		  ((atom tree) 0)
		   (t (+ (paren-depth (car tree))
		   	     (paren-depth (cdr tree))))))

;;; Each nil will be counted as a parentheses