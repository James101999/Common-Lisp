(defun pick (ls)
	"Pick out the numbers in a list that are greater than 1,
	and less than 5"
	(remove-if-not #'(lambda (x)
				(and (> x 1) (< x 5))) ls))