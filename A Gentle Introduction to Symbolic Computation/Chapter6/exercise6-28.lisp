(setf produce 
	  '((apple . fruit)
	   (celery . veggie)
	   (banana . fruit)
	   (lettuce . veggie)))

(assoc 'banana produce)
(rassoc 'fruit produce)
(assoc 'lettuce produce)
(rassoc 'veggie produce)