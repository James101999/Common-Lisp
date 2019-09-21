(defun picky-multiply (x y)
	"Computes X times Y.
	Input X must be odd; Y must be even."
	(unless (oddp x)
		(incf x)
		(format t
			"~&Changing X to ~S to make it odd." x))
	(when (oddp y)
		(decf y)
		(format t
			"~&Changing Y to ~S to make it even." y))
	(* x y))