(defstruct starship
	(name nil)
	(speed 0)
	(condition 'green)
	(shields 'down))

(setf s1 (make-starship))
(setf s2 '#s(starship speed (warp 3)
					 condition red
					 shields up))

(starship-p s2)
(starship-p 'foo)

(typep s1 'starship)
(type-of s2)

(setf (starship-name s1) "Enterprise")

(incf (starship-speed s1))

(defun alert (starship)
	(setf (starship-shields starship) 'up)
		(if (equal (starship-condition starship) 'green)
			(setf (starship-condition starship) 'yellow))
		'shields-raised)

(setf s3 (make-starship :captain "Benson"
						:name "Reliant"
						:shields 'damaged))

