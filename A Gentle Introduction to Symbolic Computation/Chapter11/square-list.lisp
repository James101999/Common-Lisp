(defun app-square-list (list-of-numbers)
	(mapcar #'(lambda (n) (* n n))
			list-of-numbers))

(defun rec-square-list (x)
	(cond ((null x) nil)
		   (t (cons (* (first x) (first x))
		   			(rec-square-list (rest x))))))

(defun faulty-it-square-list (list-of-numbers)
	(let ((result nil))
		(dolist (e list-of-numbers result)
			(push (* e e) result))))

(defun it-square-list (list-of-numbers)
	(let ((result nil))
		(dolist (e list-of-numbers (reverse result))
			(push (* e e) result))))
