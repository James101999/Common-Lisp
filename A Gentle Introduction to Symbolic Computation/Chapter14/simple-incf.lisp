(defmacro simple-incf (var &optional (amount 1))
	(list 'setq var (list '+ var amount)))

(setf a 5)
(setf b 2)

(defun faulty-incf (var)
	(setq var (+ var 1)))

(defmacro simple-incf-2 (var &optional (amount 1))
	`(setq ,var (+ ,var ,amount)))