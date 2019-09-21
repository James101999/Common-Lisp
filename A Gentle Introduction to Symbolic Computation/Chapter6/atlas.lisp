(setf atlas 
	'((pennsylvania pittsburgh)
	  (new-jersey newark)
	  (pennsylvania johnstown)
	  (ohio columbus)
	  (new-jersey princeton)
	  (new-jersey trenton)))

(setf redesigned-atlas
	'((pennsylvania pittsburgh johnstown)
	  (new-jersey newark princeton trenton)
	  (ohio columbus)))

(defun city-in-state (x)
	(rest (assoc x redesigned-atlas)))
