(defun length-of-lists (ls)
	(length (reduce #'append ls)))

(defun length-of-lists-2 (ls)
	(reduce #'+ (mapcar #'length ls)))