(defun gross-pay ()
	(format t "~&Please enter your hourly wage in dollars: ")
	(finish-output)
	(let ((wage (read)))
		(format t "~&Now enter the number of hours you have worked: ")
		(finish-output)
		(let ((hours (read)))
			(format t "~&Hourly Gross Pay: ~S ~%" (* wage hours)))))