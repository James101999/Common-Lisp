(defun get-name ()
	(let ((last-name nil)
		  (first-name nil)
		  (middle-name nil)
		  (title nil))
		(format t "~&Last name? ")
		(finish-output)
		(setf last-name (read))
		(format t "~&First name? ")
		(finish-output)
		(setf first-name (read))
		(format t "~&Middle name or initial? ")
		(finish-output)
		(setf middle-name (read))
		(format t "~&Preferred title? ")
		(finish-output)
		(setf title (read))
		(list title first-name middle-name last-name)))