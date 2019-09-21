(setf books 
	'((WAR-AND-PEACE LEO-TOLSTOY)
	  (RICH-DAD-POOR-DAD ROBERT-KIYOSAKI)
	  (WUTHERING-HEIGHTS EMILY-BRONTE)
	  (CRIME-AND-PUNISHMENT FYODOR-DOSTOEVSKY)
	  (WEALTH-OF-NATIONS ADAM-SMITH)))

(defun who-wrote (x)
	(cadr (assoc x books)))

;;;(setf books-2 (reverse books))

(setf books-2 
	'((WAR-AND-PEACE . LEO-TOLSTOY)
	  (RICH-DAD-POOR-DAD . ROBERT-KIYOSAKI)
	  (WUTHERING-HEIGHTS . EMILY-BRONTE)
	  (CRIME-AND-PUNISHMENT . FYODOR-DOSTOEVSKY)
	  (WEALTH-OF-NATIONS . ADAM-SMITH)))


(defun what-wrote (x)
	(car (rassoc x books-2)))