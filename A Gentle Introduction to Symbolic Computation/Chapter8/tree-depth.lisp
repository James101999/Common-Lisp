(defun tree-depth (tree)
	(cond ((atom tree) 0) 
		    (t (max (+ 1 (tree-depth (car tree))) ; if
		    							; a node is
		    							; found add 1
		    							; then find the
		    							; maximum node
		            (+ 1 (tree-depth (cdr tree)))))))

