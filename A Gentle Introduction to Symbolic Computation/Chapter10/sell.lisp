(setf *total-glasses* 0)

(defun sell (n)
	"Ye Olde Lemonade Stand:   Sales by the Glass."
	(setf *total-glasses* (incf *total-glasses* n))
	(format t
		"~&That makes ~S glasses so far today."
		*total-glasses*))