;;; A card game, a card will be represented by a list of form
;;; (rank suit); i.e. (ACE SPADES) or (2 CLUBS). A hand will
;;; be represented by a list of cards.

(defun rank (card)
	"Returns the rank of the card"
	(first card))

(defun suit (card)
	"Returns the suit of the card"
	(second card))

(setf my-hand 
	'((3 hearts)
	  (5 clubs)
	  (2 diamonds)
	  (4 diamonds)
	  (ace spades)))

(defun count-suit (my-suit hand)
	"Counts the number of suits in a given hand"
	(length (remove-if-not #'(lambda (e) 
								(equal my-suit (suit e))) 
		hand)))

(setf colors
	'((clubs black)
	  (diamonds red)
	  (hearts red)
	  (spades black)))

(defun color-of (card)
	"Returns the color of the given card"
	(second (assoc (suit card) colors)))

(defun first-red (hand)
	"Returns the first card of a hand if it is a red suit"
	(first (remove-if-not #'(lambda (e) 
								(equal (color-of e) 'red))
		hand)))

(defun black-cards (hand)
	"Returns a list of all the black cards in a hand"
	(remove-if-not #'(lambda (e) (equal (color-of e) 'black))
		hand))

(defun what-ranks (my-suit hand)
	"Returns the ranks of all cards belonging to that suit"
	(mapcar #'(lambda (x) (rank x))
		(remove-if-not #'(lambda (e) (equal my-suit (suit e))) 
			hand)))

(setf all-ranks '(2 3 4 5 6 7 8 9 10 jack queen king ace))

(defun beforep (x y l)
	"Returns true if X appears before Y in L"
	(member y (member x l)))

(defun higher-rank-p (card-1 card-2)
	"Returns true if the first card has a higher rank than
	the second"
	(if (equal (beforep (rank card-1) (rank card-2) all-ranks) 
			nil) t))

(defun high-card (hand)
	"Returns the highest ranked card in your hand"
	(assoc (find-if #'(lambda (e) 
					(assoc e hand))
		(reverse all-ranks)) hand))
				
