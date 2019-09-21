(defun space-over (n)
	(labels ((space-over-recursively (cnt result)
				(cond ((< n 0) (format t "~&Error!~%"))
		  	  		  ((> cnt n) result)
		  	  		   (t (space-over-recursively
		  	  		   	(+ cnt 1) (format t " "))))))
		(space-over-recursively 1 (format t "~&"))))

(defun test (n)
	(format t "~%>>>")
	(space-over n)
	(format t "<<<"))

(defun plot-one-point (plotting-string y-val)
	(space-over y-val)
	(format t plotting-string)
	(format t "~%"))

(defun plot-points (plotting-string y-list)
	(cond ((null y-list) nil)
		   (t (plot-one-point plotting-string (car y-list)) 
		   		(plot-points plotting-string (cdr y-list)))))

(defun generate (m n)
	(cond ((> m n) nil)
		   (t (cons m (generate (+ m 1) n)))))

(defun make-graph ()
	(format t "~&Function to graph? ")
	(finish-output)
	(let ((func (read)))
		(format t "~&Starting x value? ")
		(finish-output)
		(let ((start (read)))
			(format t "~&Ending x value? ")
			(finish-output)
			(let ((end (read)))
				(format t "~&Plotting string? ")
				(finish-output)
				(let ((plotting-string (read)))
					(plot-points plotting-string
						(mapcar func (generate start end))))))))

(defun square (x)
	(* x x))

(defun cube (x)
	(* x x x))