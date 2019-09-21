(defun count-up (n)
	(count-up-recursively 1 n))

(defun count-up-recursively (cnt n)
	(cond ((> cnt n) nil)
		   (t (cons cnt (count-up-recursively (+ cnt 1) n)))))

(defun count-up-2 (n)
	(cond ((zerop n) nil)
		   (t (append (count-up-2 (- n 1)) (list n)))))