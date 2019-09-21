(setf note-table 
	'((C 1)
	  (C-SHARP 2)
	  (D 3)
	  (D-SHARP 4)
	  (E 5)
	  (F 6)
	  (F-SHARP 7)
	  (G 8)
	  (G-SHARP 9)
	  (A 10)
	  (A-SHARP 11)
	  (B 12)))

(defun numbers (list-of-notes)
	(mapcar (lambda (x) (second (assoc x note-table))) 
		list-of-notes))

(defun search-table (table-element)
	(find-if (lambda (entry) 
				(equal table-element (second entry))) 
		note-table))

(defun notes (list-of-numbers)
	(mapcar (lambda (x) (first (search-table x))) 
		list-of-numbers))

(defun raise (n list-of-numbers)
	(mapcar (lambda (x) (+ n x)) list-of-numbers))

(defun normalize (list-of-numbers)
	(mapcar (lambda (x)
				(if (> x 12) (- x 12)
					(if (< x 1) (+ x 12) x)))
		 list-of-numbers))

(defun transpose (n song)
	(notes (normalize (raise n (numbers song)))))