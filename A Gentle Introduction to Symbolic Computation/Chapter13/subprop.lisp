(setf (get 'alpha 'fooprop) '(a b c d e))

(defun subprop (sym elem prop)
	(setf (get sym prop) (remove elem (get sym prop))))

