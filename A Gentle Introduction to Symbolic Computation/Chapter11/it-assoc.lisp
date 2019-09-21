(setf translate 
	'((one un)
	  (tow deux)
	  (three trois)))

(defun it-assoc (element ls)
	(dolist (index ls)
		(when (equal element (first index)) (return index))))