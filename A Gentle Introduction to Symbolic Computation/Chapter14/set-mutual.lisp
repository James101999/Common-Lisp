(defmacro set-mutual (var1 var2)
	`(progn
		(setf ,var1 ',var2)
		(setf ,var2 ',var1)))