(defmacro set-zero (&rest variables)
	`(progn ,@(mapcar #'(lambda (var)
						   (list 'setf var 0))
					  variables)
			'(zeroed ,@variables)))

(set-zero a b c)