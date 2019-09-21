(setf (get 'b 'foo) nil)

(defun hasprop (sym prop)
	(if (find-if #'(lambda (x)
			(equal x prop)) (symbol-plist sym))
		t nil))

