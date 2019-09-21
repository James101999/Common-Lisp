(defun swap-first-last (x)
	"Append the last of hte last with the
	rest of the list, that is reversed"
	(append (last x)  
		(nthcdr 1 (reverse (nthcdr 1 (reverse x)))) 
		(list (first x))))