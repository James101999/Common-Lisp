(setf words
	'((one un)
	  (two deux)
	  (three trois)
	  (four quatre)
	  (five cinq)))

(defun translate(x)
	(second (assoc x words)))

(mapcar #'translate '(three one four one five))