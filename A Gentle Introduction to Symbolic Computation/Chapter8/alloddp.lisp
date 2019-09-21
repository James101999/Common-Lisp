;;; A recursive function that returns T if all the numbers in
;;; the list are odd

(defun alloddp (ls)
	(cond ((null ls) t) ; if list is empty return t, since
		   ((evenp (first ls)) nil) ; none are even
		   (t (alloddp (rest ls))))) ; else take the rest of the
									; recursive list and 
									; test for it again