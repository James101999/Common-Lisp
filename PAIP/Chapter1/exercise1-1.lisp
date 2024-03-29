(defun last-name (name)
	"Select the last name from a name represented as a list."
	(if (member (first (last name)) *titles-last-name*)
		(last-name (reverse (rest (reverse name))))
		(first (last name))))

(defun first-name (name)
	"Select the first name from a name represented as a list."
	(if (member (first name) *titles*)
		(first-name (rest name))
		(first name)))

(setf names '((John Q Public) (Malcolm X)
			  (Admiral Grace Murray Hopper) (Spot)
			  (Aristotle) (A A Milne) (Z Z Top)
			  (Sir Larry Olivier) (Miss Scarlet)))

(defparameter *titles*
	'(Mr Mrs Miss Ms Sir Madam Dr Admiral Major General)
	"A list of titles that can appear ar the start of a name.")

(defparameter *titles-last-name*
	'(MD Jr Sr)
	"A list of titles that appears the athe last name.")