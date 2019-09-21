(defun nested-list (lol)
	"Picks out a list of length two from a lists of lists"
	(remove-if-not #'(lambda (x)
						(equal (length x) 2)) lol))