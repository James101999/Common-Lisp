(defun addprop (sym elem prop)
	(pushnew elem (get sym prop)))

(defun record-meeting (x y)
	(addprop x y 'has-met)
	(addprop y x 'has-met)
	t)

(record-meeting 'little-red 'wolfie)
(record-meeting 'wolfie 'grandma)

(symbol-plist 'little-red)
(symbol-plist 'wolfie)
(symbol-plist 'grandma)