(setf nerd-states
	'((sleeping eating)
	  (eating waiting-for-a-computer)
	  (waiting-for-a-computer programming)
	  (programming debugging)
	  (debugging sleeping)))

(defun nerdus (x)
	(cadr (assoc x nerd-states)))

(defun sleepless-nerd (x)
	(if (equal (nerdus x) 'sleeping) (nerdus 'sleeping) 
		(nerdus x)))

(defun nerd-on-caffeine (x)
	(nerdus (nerdus x)))