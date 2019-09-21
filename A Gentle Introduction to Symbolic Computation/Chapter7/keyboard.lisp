;;; Keyboard exercise about blocks.
;;; This will serve as an intro to database storing.

(setf database
	'((b1 shape brick)
	  (b1 color green)
	  (b1 made-of wood)
	  (b1 supported-by b2)
	  (b1 supported-by b3)
	  (b2 shape brick)
	  (b2 color red)
	  (b2 size small)
	  (b2 made-of plastic)
	  (b2 supports b1)
	  (b2 left-of b3)
	  (b3 shape brick)
	  (b3 color red)
	  (b3 size small)
	  (b3 supports b1)
	  (b3 right-of b2)
	  (b4 shape pyramid)
	  (b4 color blue)
	  (b4 size large)
	  (b4 supported-by b5)
	  (b5 shape cube)
	  (b5 color green)
	  (b5 size large)
	  (b5 supports b4)
	  (b6 shape brick)
	  (b6 color purple)
	  (b6 size large)))

(defun match-element (sym-1 sym-2)
	"Take two symbols as input, and return T if the two are
	equal or the second is is a question mark."
	(or (equal sym-1 sym-2) 
		(equal sym-2 '?)))

(defun match-triple (assertion pattern)
	"Take an assertion and pattern as input and use the first
	function to compare if every assertion matches."
	(every #'match-element assertion pattern))

(defun fetch (pattern)
	"This removes what is not matched, in order to fetch
	the patterns. It will also serve as the pattern matcher"
	(remove-if-not #'(lambda (e) (match-triple e pattern)) 
		database))

(defun ask-color (block)
	"Take a block as an input and ask for its color."
	(list block 'color '?))

(defun supporters (block)
	"Take a block and return a list of the blocks that 
	support it. This function will use fetch for pattern
	matching, and mapcar to extract it."
	(mapcar #'first (fetch (list '? 'supports block))))

(defun supp-cube (block)
	"Take a block as input and return true if it is supported
	by a cube. It does this by first finding the blocks that
	supports it, then applying mapcar to fetch the block's
	information, then reducing it to get rid of the parentheses
	and finding if the block is supported by the cube."
	(find-if #'(lambda (e) (equal (third e) 'cube)) 
		(reduce #'append (mapcar #'(lambda (e) 
							(fetch (list e 'shape '?))) 
		(supporters block)))))

(defun desc1 (block)
	"Returns all assertions from a given block."
	(fetch (list block '? '?)))

(defun desc2 (block)
	"Same as desc1, but strips off the block name of each
	element"
	(mapcar #'rest (desc1 block)))

(defun description (block)
	"This function will return the description of a block."
	(reduce #'append (desc2 block)))		 
