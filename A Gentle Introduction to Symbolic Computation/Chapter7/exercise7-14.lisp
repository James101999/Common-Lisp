(defun my-setdiff (x y)
	(remove-if #'(lambda (e) (member e y))
		x))

(defun my-intersect (x y)
	(remove-if-not #'(lambda (e) (member e y))
		x))

(defun my-union (x y)
	(remove-duplicates (append (remove-if-not #'(lambda (e) 
								(member e x)) x) y))) 