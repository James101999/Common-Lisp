(defun rotate-left (x)
	"Take the rest of the list and append it with the first"
	(append (nthcdr 1 x) (list (first x))))

(defun rotate-right (x)
	"Take the last of the list and append it with the
	reversed rest of the list, and reverse it again"
	(append (last x) (reverse (nthcdr 1 (reverse x)))))