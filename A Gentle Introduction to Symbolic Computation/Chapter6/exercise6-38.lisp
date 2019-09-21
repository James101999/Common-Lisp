;;; example of sets X and Y, such that
;;; (SET-DIFFERENCE X Y) == (SET-DIFFERENCE Y X)

(defun eq-dif (x y)
	(equal (SET-DIFFERENCE x y) (SET-DIFFERENCE y x)))

(eq-dif '(A B C D E) '(B C D A E))
(eq-dif NIL NIL)
(eq-dif '(A B C) '(A B C D E F))
(eq-dif '(A B C D E F)'(A B C))

;;; Unary arithmetic is represented by cdr and append in lisp
;;; for example:

(setf unary-1 '(X)) ; 1
(cdr unary-1) ; 0
(append unary-1 unary-1) ; 2
(append unary-1 unary-1 unary-1) ; 3

(member 'A '(A B C D))
(member 'B '(A B C D))
(member 'C '(A B C D))
(member 'D '(A B C D))

(setf transform 
	'((A B C D)
	  (B C D)
	  (C D)
	  (D)))

(assoc 'A transform)
(assoc 'B transform)
(assoc 'C transform)
(assoc 'D transform)



