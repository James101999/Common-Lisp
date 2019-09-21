(defun tr-count-slices (loaf)
	(tr-csl loaf 0))

(defun tr-csl (loaf n)
	(cond ((null loaf) n)
		   (t (tr-csl (rest loaf) (+ n 1)))))

(defun tr-count-slices-2 (loaf)
	(labels ((tr-csl-2 (loaf n)
				(if (null loaf) n
					(tr-csl-2 (rest loaf) (+ n 1)))))
		(tr-csl-2 loaf 0)))