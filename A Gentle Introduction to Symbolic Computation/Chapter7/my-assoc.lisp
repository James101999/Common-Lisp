(setf words
	'((one un)
	  (two deux)
	  (three trois)
	  (four quatre)
	  (five cinq)))

(defun my-assoc (key table)
	(find-if #'(lambda (entry)
				  (equal key (first entry)))
			 table))

(my-assoc 'two words)