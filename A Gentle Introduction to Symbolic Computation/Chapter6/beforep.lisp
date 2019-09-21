(defun beforep (x y l)
	"Returns true if X appears before Y in L"
	(member y (member x l)))