(defun f (x y)
	(showvar x)
	(showvar y)
	(* x y))

(defmacro showvar (var)
	`(format t "~&The value of ~S is ~s"
		',var
		,var))

(f 3 7)