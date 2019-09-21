(defun snip (x)
	(setf (cdr x) (cdr (cdr x))))

(setf a '(no down payment))
(setf b (cdr a))

(snip a)

(setf circ (list 'foo))

-(setf (cdr circ) circ)