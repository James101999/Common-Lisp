(defun set-equal (x y)
	(and (subsetp x y)
		 (subsetp y x)))

(defun proper-subsetp (x y)
	(and (subsetp x y) (not (set-equal x y))))