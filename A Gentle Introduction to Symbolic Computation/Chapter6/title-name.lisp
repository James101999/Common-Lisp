(defun titledp (name)
	(member (first name) '(mr ms miss mrs)))

(setf male-first-names
	'(john kim richard fred george))

(setf female-first-names
	'(jane mary wanda barbara kim))

(defun malep (name)
	(and (member name male-first-names)
		 (not (member name female-first-names))))

(defun femalep (name)
	(and (member name female-first-names)
		 (not (member name male-first-names))))

(defun give-title (name)
	"Returns a name with an appropriate title on
	 the front."
	 (cond ((titledp name) name)
	 	   ((malep (first name)) (cons 'mr name))
	 	   ((femalep (first name)) (cons 'ms name))
	 	   (t (append '(mr or ms) name))))

(defun gender-ambiguous-names ()
	(intersection male-first-names female-first-names))

(defun uniquely-male-names ()
	(set-difference male-first-names female-first-names))
