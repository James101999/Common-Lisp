(defun last-name (name)
	"Select the last name froma  name represented as a list."
	(first (last name)))

(defun first-name (name)
	"Select the first name froma  name represented as a list."
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