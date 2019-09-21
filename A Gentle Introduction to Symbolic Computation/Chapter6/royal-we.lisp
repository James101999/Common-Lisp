(defun royal-we (x)
	(subst 'WE 'I x))

(defun royal-we-2 (x)
	(sublis '((I . WE)) x))