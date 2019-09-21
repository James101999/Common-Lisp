(dotimes (i 5 i)
	(format t "~&I = ~S" i))

(do ((i 0 (+ i 1)))
	((= i 5) i)
	(format t "~&I = ~S" i))