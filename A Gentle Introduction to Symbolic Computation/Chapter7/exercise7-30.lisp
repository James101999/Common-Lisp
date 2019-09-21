(setf words 
	'((un one)
	  (deux two)
	  (trois three)
	  (quatre four)
	  (cinq five)))

(setf spanish-words '(uno dos tres quatro cinco))

(mapcar #'(lambda (x y) (append (list x) y))
 	spanish-words words)