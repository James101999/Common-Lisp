(defun my-find-if (func arg)
	(first (remove-if-not func arg)))