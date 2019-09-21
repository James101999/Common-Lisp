(defun print-board (ls)
	(format t "~&~A | ~A | ~A" 
		(apply-board (first ls))
		(apply-board (second ls))
		(apply-board (third ls))) 
	(format t "~&----------")
	(format t "~&~A | ~A | ~A" 
		(apply-board (fourth ls))
		(apply-board (fifth ls))
		(apply-board (sixth ls)))
	(format t "~&----------")
	(format t "~&~A | ~A | ~A~%~%" 
		(apply-board (seventh ls))
		(apply-board (eighth ls))
		(apply-board (ninth ls))))

(defun apply-board (ls)
	(cond ((equal nil ls) " ")
		  ((equal 'X ls) "X")
		  ((equal 'O ls) "O")))

(defun print-board-2 (b)
	(let ((b2 (sublis '((x . "X")
						(o . "O")
						(nil . " "))
					  b)))
	   (format t "~&")
	   (print-line b2)
	   (format t "-----------~%")
	   (print-line (nthcdr 3 b2))
	   (format t "-----------~%")
	   (print-line (nthcdr 6 b2))))

(defun print-line (line)
	(format t " ~A | ~A | ~A~%"
		(first line)
		(second line)
		(third line)))