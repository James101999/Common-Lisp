(defmacro two-from-one (func object)
	`(,func ',object ',object))