(defun power (base exponent)
	(if (equal exponent 1) base
		(* base (power base (- exponent 1)))))