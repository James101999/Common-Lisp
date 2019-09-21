(defun add-to-end (x e)
	"Adds element E to the end of list X."
	(append x (list e)))

(add-to-end '(a b c) 'd)