(defun my-get (sym prop &optional elem)
	(if (null (find-if #'(lambda (x)
					(equal x prop)) (symbol-plist sym)))
		elem
	(let ((result nil))
		(do ((p (symbol-plist sym) (cddr p)))
			((null p) (reverse result))
	  	  (push (list (first p) (second p)) result))
		(cadr (assoc prop result)))))
