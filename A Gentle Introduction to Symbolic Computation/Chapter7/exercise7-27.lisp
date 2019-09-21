(defun my-every (func arg)
	(equal (remove-if func arg) nil))

(defun my-every-2 (func arg)
	(null (remove-if func arg)))