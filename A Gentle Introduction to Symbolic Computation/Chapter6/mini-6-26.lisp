(defun right-side (x)
	(rest (member '-vs- x )))

(defun left-side (x)
	;;(right-side (reverse x)))
	(reverse (rest (member '-vs- (reverse x)))))

(defun common (x)
	(length (intersection (left-side x) (right-side x))))

(defun compare (x)
	(list (common x) 'common 'features))