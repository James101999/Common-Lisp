(defstruct (node (:print-function print-node))
	(name nil)
	(inputs nil)
	(outputs nil))

(defun print-node (node stream depth)
	(format stream "#<Node ~A>"
			(node-name node)))

(defstruct (arc (:print-function print-arc))
	(from nil)
	(to nil)
	(label nil)
	(action nil))

(defun print-arc (arc stream depth)
	(format stream "#<ARC ~A / ~A / ~A>"
			(node-name (arc-from arc))
			(arc-label arc)
			(node-name (arc-to arc))))

(defvar *nodes*)
(defvar *arcs*)
(defvar *current-node*)

(defun initialize ()
	(setf *nodes* nil)
	(setf *arcs* nil)
	(setf *current-node* nil))

(defmacro defnode (name)
	`(add-node ',name))

(defun add-node (name)
	(let ((new-node (make-node :name name)))
		(setf *nodes* (nconc *nodes* (list new-node)))
	   new-node))

(defun find-node (name)
	(or (find name *nodes* :key #'node-name)
		(error "No node named ~A exists." name)))

(defmacro defarc (from label to &optional action)
	`(add-arc ',from ',label ',to ',action))

(defun add-arc (from-name label to-name action)
	(let* ((from (find-node from-name))
		   (to (find-node to-name))
		   (new-arc (make-arc :from from
		   					  :label label
		   					  :to to
		   					  :action action)))
		(setf *arcs* (nconc *arcs* (list new-arc)))
		(setf (node-outputs from)
			  (nconc (node-outputs from)
			  		 (list new-arc)))
		(setf (node-inputs to)
			  (nconc (node-inputs to)
			  		 (list new-arc)))
		new-arc))

(defun fsm (&optional (starting-point 'start))
	(setf *current-node* (find-node starting-point))
	(do ()
		((null (node-outputs *current-node*)))
	  (one-transition)))

(defun one-transition ()
	(format t "~&State ~A. Input: "
			(node-name *current-node*))
	(finish-output)
	(let* ((ans (read))
		   (arc (find ans
		   			  (node-outputs *current-node*)
		   			  :key #'arc-label)))
		(unless arc
			(format t "~&No arc from ~A has label ~A.~%"
					(node-name *current-node*) ans)
			(return-from one-transition nil))
		(let ((new (arc-to arc)))
			(format t "~&~A" (arc-action arc))
			(setf *current-node* new))))

(defun compile-arc (arc)
	`((equal this-input ',(arc-label arc))
	  (format t "~&~A" ,(arc-action arc))
	  (,(node-name (arc-to arc)) 
	  	(rest input-syms))))

(defun compile-node (node)
	(let* ((nd (node-name node))
		  (a (mapcar #'compile-arc (NODE-OUTPUTS node))))
		`(defun ,nd (input-syms &aux
						(this-input (first input-syms)))
			(cond ((null input-syms) ',nd)
			  	  ,@a
			  	   (t (error "No arc from ~A With label ~A."
			  	   		',nd this-input))))))

(defmacro compile-machine ()
	`(progn ,@(mapcar #'compile-node *nodes*)))

(defnode start)
(defnode have-5)
(defnode have-10)
(defnode have-15)
(defnode have-20)
(defnode have-25)
(defnode end)

(defarc start	nickel			 have-5  "Clunk!")
(defarc start	dime			 have-10 "Clink!")
(defarc start 	quarter			 have-25 "Ker-chunk!")
(defarc start	coin-return		 start 	 "Nothing to return.")
(defarc have-5	nickel			 have-10 "Clunk!")
(defarc have-5	dime			 have-15 "Clink!")
(defarc have-5  quarter			 have-25 "Nickel change.")
(defarc have-5	coin-return		 start 	 "Returned five cents.")
(defarc have-10	nickel			 have-15 "Clunk!")
(defarc have-10	dime			 have-20 "Clink!")
(defarc have-10 quarter			 have-25 "Dime change.")
(defarc have-10	coin-return		 start 	 "Returned ten cents.")
(defarc have-15	nickel			 have-20 "Clunk!")
(defarc have-15	dime			 have-25 "Clink!.")
(defarc have-15 quarter			 have-15 "Quarter returned.")
(defarc have-15	gum-button		 end 	 "Deliver gum.")
(defarc have-15 coin-return 	 start 	 "Returned fifteen cents.")
(defarc have-20	nickel			 have-25 "Clunk!")
(defarc have-20	dime			 have-25 "Nickel change.")
(defarc have-20 quarter     	 have-20 "Quarter returned.")
(defarc have-20	gum-button		 end 	 "Deliver gum, nickle change.")
(defarc have-20 mint-button 	 end	 "Deliver mints.")
(defarc have-20 coin-return 	 start	 "Returned twenty cents.")
(defarc have-25 nickel       	 have-25 "Nickel returned.")
(defarc have-25 dime        	 have-25 "Dime returned.")
(defarc have-25 quarter    		 have-25 "Quarter returned.")
(defarc have-25	gum-button		 end 	 "Deliver gum, dime change.")
(defarc have-25 mint-button 	 end	 "Deliver mints, nickel change.")
(defarc have-25 chocolate-button end     "Deliver chocolate.")
(defarc have-25 coin-return 	 start	 "Returned twenty-five cents.")