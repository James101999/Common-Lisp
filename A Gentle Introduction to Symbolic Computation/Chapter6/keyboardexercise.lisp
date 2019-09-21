(setf rooms

	'((living-room		  (north front-stairs)
						  (south dining-room)
						  (east kitchen))

	 (upstairs-bedroom	  (west library)
	 					  (south front-stairs))

	 (dining-room		  (north living-room)
	 					  (east pantry)
	 					  (west downstairs-bedroom))

	 (kitchen			  (west living-room)
	 					  (south pantry))

	 (pantry			  (north kitchen)
	 					  (west dining-room))

	 (downstairs-bedroom  (north back-stairs)
	 					  (east dining-room))

	 (back-stairs		  (south downstairs-bedroom)
	 					  (north library))

	 (front-stairs		  (north upstairs-bedroom)
	 					  (south living-room))

	 (library			  (east upstairs-bedroom)
	 					  (south back-stairs))))

(defun choices (room)
	(rest (assoc room rooms)))

(defun look (direction room)
	(cadr (assoc direction (choices room))))

(defun set-robbie-location (place)
	"Moves Robbie to PLACE by setting the variable LOC."
	(setf loc place))

(set-robbie-location 'pantry)

(defun how-many-choices ()
	(length (choices loc)))

(defun upstairsp (x)
	(or (equal x 'upstairs-bedroom)
		(equal x 'library)))

(defun onstairsp (x)
	(or (equal x 'front-stairs)
		(equal x 'back-stairs)))

(defun where ()
	(cond ((upstairsp loc) (list 'ROBBIE 'IS 'UPSTAIRS 
			'IN 'THE loc))
		  ((onstairsp loc) (list 'ROBBIE 'IS 'ON 'THE
		  	loc))
		  (t (list 'ROBBIE 'IS 'DOWNSTAIRS 'IN 'THE loc))))

(defun move (direction)
	(if (look direction loc)
		(cadr (list (set-robbie-location 
			(look direction loc)) (where))) 
		'(OUCH! ROBBIE HIT A WALL)))