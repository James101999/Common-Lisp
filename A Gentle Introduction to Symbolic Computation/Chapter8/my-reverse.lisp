(defun my-reverse (ls)
	(my-reverse-recursively ls (- (length ls) 1)))

(defun my-reverse-recursively (ls n)
	(cond ((< n 0) nil)
		   (t (cons (nth n ls) 
		   	(my-reverse-recursively ls (- n 1))))))

(defun my-reverse-2 (ls)
	(my-reverse-recursively-2 ls nil))

(defun my-reverse-recursively-2 (ls nd)
	(cond ((null ls) nd)
		   (t (my-reverse-recursively-2 (cdr ls)
		   		(cons (car ls) nd)))))