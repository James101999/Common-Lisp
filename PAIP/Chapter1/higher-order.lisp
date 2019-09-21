(defun mappend (fn the-list)
	"Apply fn to each element of list and append the results."
	(apply #'append (mapcar fn the-list)))

(defun self-and-double (x) (list x (+ x x)))

(mapcar #'self-and-double '(1 10 300))
(mappend #'self-and-double '(1 10 300))

(defun numbers-and-negations (input)
	"Given a list, return only the numbers and their negations."
	(mappend #'number-and-negation input))

(defun number-and-negation (x)
	"If x is a number, return a list of x and -x."
	(if (numberp x)
		(list x (- x))
		nil))

(numbers-and-negations '(testing 1 2 3 test))

(defun mappend-2 (fn the-list)
	"Apply fn to each element of list and append the results."
	(if (null the-list)
		nil
		(append (funcall fn (first the-list))
				(mappend-2 fn (rest the-list)))))