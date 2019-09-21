(defstruct node
	(name nil)
	(question nil)
	(yes-case nil)
	(no-case nil))

(setf *node-list* nil)

(defun init ()
	(setf *node-list* nil))

(defun add-node (nm qst ys n)
	(push (make-node :name nm
			   :question qst
			   :yes-case ys
			   :no-case n)
		*node-list*) 
	nm)

(ADD-NODE 'start
			"Does the engine turn over? "
			'engine-turns-over
			'engine-wont-turn-over)

(ADD-NODE 'engine-turns-over
			"Will the engine run for any period of time? "
			'engine-will-run-briefly
			'engine-wont-run)

(ADD-NODE 'engine-wont-run
			"Is there gas in the tank? "
			'gas-in-the-tank
			"Fill the tank and try starting the engine again.")

(ADD-NODE 'engine-wont-turn-over
		  "Do you hear any sound when you turn the key? "
		  'sound-when-turn-key
		  'no-sound-when-turn-key)

(ADD-NODE 'no-sound-when-turn-key
			"Is the battery voltage low? "
			"Replace the battery"
			'battery-voltage-ok)

(ADD-NODE 'battery-voltage-ok
			"Are the battery cables dirty or loose? "
			"Clean the cables and tighten the connections."
			'battery-cables-good)

(defun find-node (nd-nm)
	(dolist (element *node-list* nil)
		(if (equal (node-name element) nd-nm)
			(return element))))

(defun process-node (nd-nm)
	(if (null (find-node nd-nm))
		(format t "~&Node has not been defined yet")
		(if (yes-or-no-p (node-question (find-node nd-nm)))
			(node-yes-case (find-node nd-nm))
			(node-no-case (find-node nd-nm)))))

(defun run ()
	(let ((current-node 'start))
		(dolist (element *node-list* current-node)
			(unless (or (stringp current-node)
						(null current-node))
				(setf current-node (process-node current-node))))))

(defun prompt-add-node ()
	(format t "~&Enter the name: ")
	(finish-output)
	(let ((nm (read)))
		(format t "~&Enter a question: ")
		(finish-output)
		 (let ((qst (read)))
		 	(format t "Enter yes case: ")
			(finish-output)
		  	(let ((y-case (read)))
		  		(format t "Enter no case: ")
				(finish-output)
		  		(let ((n-case (read)))
	(ADD-NODE nm qst y-case n-case))))))

(ADD-NODE 'engine-will-run-briefly
			"Will the engine stall when it is cold? "
			'cold-idle-speed
			"Adjust the idle speed")

(ADD-NODE 'cold-idle-speed
			"Is the cold idle speed at least 700 rpm? "
			"Engine will run."
			'engine-wont-run)