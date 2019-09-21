(defun verse (n)
	(format t "~&~S bottles of beer on the wall" n)
	(format t "~&~S bottles of beer" n)
	(format t "~&Take one down,")
	(format t "~&Pass it around,~%~%"))

(defun ninety-nine-bottles (n)
	(cond ((zerop n) (format t "And none are left!"))
		   (t (verse n) (ninety-nine-bottles (- n 1)))))
