(defun it-member (element ls)
	(dolist (index ls nil)
		(when (equal element index) 
			(return t))))