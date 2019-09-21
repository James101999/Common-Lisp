(mapcar #'(lambda (x) (or (equal x T)
				(equal x NIL)))
		'(1 2 3 'your 'mom '(your gay) T NIL NIL T))