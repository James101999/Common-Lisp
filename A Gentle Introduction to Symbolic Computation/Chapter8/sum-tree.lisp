(defun sum-tree (tree)
	(cond ((symbolp tree) 0)
		   ((numberp tree) tree)
		    (t (+ (sum-tree (car tree))
		    	  (sum-tree (cdr tree))))))