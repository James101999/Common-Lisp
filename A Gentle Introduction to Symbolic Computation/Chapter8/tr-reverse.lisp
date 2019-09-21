(defun my-reverse (x)
	(cond ((null x) nil)
		   (t (append (reverse (rest x))
		   			  (list (first x))))))

(defun tr-reverse (x)
	(tr-rev1 x nil))

(defun tr-rev1 (x result)
	(cond ((null x) result)
		   (t (tr-rev1
		   		(rest x)
		   		(cons (first x) result)))))

(defun tr-reverse-2 (x)
	(labels ((tr-rev2 (x result)
				(if (null x) result
					(tr-rev2 (rest x) (cons (first x) result)))))
		(tr-rev2 x nil)))