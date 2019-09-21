(defun nth (n x)
	"Returns the Nth element of the list X,
	 counting from 0."
	 (car (nthcdr n x)))