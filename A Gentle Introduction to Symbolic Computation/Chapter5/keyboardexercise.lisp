;;; A dice game
(defun THROW-DIE ()
	"Returns a random number, no arguments needed"
	(+ 1 (random 6))) ;adds 1 so 6 range could be 1-6

;;; This function will be called throw
(defun THROW-DICE ()
	"Returns a list of 2 thrown dice"
	(list (THROW-DIE) (THROW-DIE))) ;thrown dices

(defun SNAKE-EYES-P (throw)
	"Returns T if throw is equal to (1 1)"
	(equal throw (list 1 1))) 

(defun BOXCARS-P (throw)
	"Returns T if throw is equal to (6 6)"
	(equal throw (list 6 6)))

(defun INSTANT-WIN-P (throw)
	"If 7 or 11, then you win"
	(or
	   (or (equal 7 (first throw))
		   (equal 7	(second throw)))  
	   (or (equal 11 (first throw))
		   (equal 11 (second throw))))) 

(defun INSTANT-LOSS-P (throw)
	"If 2, 3, or 12, you lose"
	(or 
	   (or (equal 2 (first throw))
		   (equal 2 (second throw)))
	   (or (equal 3 (first throw))
		   (equal 3 (second throw)))    
	   (or (equal 12 (first throw))
		   (equal 12 (second throw))))) 

(defun SAY-THROW (throw)
	"Returns either the sum of the two dice or
	 the symbol SNAKE-EYES or BOXCARS"
	(cond ((equal 2 (+ (first throw) (second throw))) 'SNAKE-EYES)
		  ((equal 12 (+ (first throw) (second throw))) 'BOXCARS)
		  (t (+ (first throw) (second throw)))))

(defun CRAPS ()
	"If you don't win or lose, you gain a point
	, this function will return the value you threw
	and it will become the point."
    (let* ((throw (THROW-DICE))
    	  (frst-die (first throw)) ;1st die
    	  (scnd-die (second throw)) ;2nd die
    	  ; If INSTANT-WIN-P is true, return win
    	  ; otherwise if INSTANT-LOSS-P is true,
    	  ; returns lose
    	  (sum (+ frst-die scnd-die)) ; the sum of dies
    	  (win (list 'YOU 'WIN))
    	  (lose (list 'YOU 'LOSE))
    	  (neither (list 'YOUR 'POINT 'IS sum))
    	  (result (cond ((INSTANT-WIN-P throw) win)
    	  			    ((INSTANT-LOSS-P throw) lose)
    	  			    (t neither))))
    	(cons 'THROW (cons frst-die (cons 'AND  (cons scnd-die  
    		(cons '-- (cons (SAY-THROW throw) 
    		(cons '-- result))))))))) ;this flattens up the entire list

(defun TRY-FOR-POINT (x)
	"If a point is established, you continue throwing the dice
	until you win or lose, you lose by throwing a 7."
	(let* ((throw (THROW-DICE))
    	  (frst-die (first throw)) ;1st die
    	  (scnd-die (second throw)) ;2nd die
    	  (sum (+ frst-die scnd-die)) ; the sum of dies
		  (win (list 'YOU 'WIN))
		  (again (list 'THROW 'AGAIN))
		  (lose (list 'YOU 'LOSE))
		  (result (cond ((equal x sum) win)
    	  		  	((equal sum 7) lose)
    	  		  	(t again))))
    (cons 'THROW (cons frst-die (cons 'AND  (cons scnd-die  
    	(cons '-- (cons sum
    	(cons  '-- result))))))))) ; this flattens up the entire list
