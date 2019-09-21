(setf *friends* nil)
(setf *count* 0)
(setf *met-before* nil)

(defun meet (person)
	(cond ((equal person (first *friends*))
			(if (member person *met-before*)
					(format t 
					"~&~S~%No. of people met more than once: ~S" 
					'we-just-met *count*)
				(format t 
					"~&~S ~S~%No. of people met more than once: ~S" 
					'we-just-met (setf *met-before* (push person *met-before*))
				(setf *count* (incf *count*)))))
		  ((member person *friends*)
		  	(if (member person *met-before*)
					(format t 
					"~&~S~%No. of people met more than once: ~S" 
					'we-know-each-other *count*)
				(format t 
					"~&~S ~S~%No. of people met more than once: ~S" 
					'we-know-each-other (setf *met-before* (push person *met-before*)) 
				(setf *count* (incf *count*)))))
		   (t (push person *friends*)
		   	  'pleased-to-meet-you)))

(defun forget (person)
	(cond ((member person *friends*)
			(format t "~&~S ~S" 
				(setf *friends* (remove person *friends*))
				(setf *person* (remove person *met-before*)))
				(setf *count* (decf *count*)))
			(t 'person-not-on-the-list)))