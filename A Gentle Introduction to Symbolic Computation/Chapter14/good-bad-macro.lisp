(defmacro bad-announce-macro ()
	(format t "~%Hi mom!"))

(defun say-hi ()
	(bad-announce-macro))

(defmacro good-announce-macro ()
	`(format t "~%Hi mom!"))