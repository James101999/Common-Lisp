(defun it-nth (n ls)
	(let ((result nil))
		  (dolist (element ls result)
			(unless (< n 0)
				(setf result element)
				(setf n (- n 1))))))

			