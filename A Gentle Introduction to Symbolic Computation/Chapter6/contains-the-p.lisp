(defun contains-the-p (sent)
	(member 'the sent))

(defun contains-article-p (sent)
	(intersection sent '(the a an)))

(defun contains-article-p-2 (sent)
	(or (member 'the sent)
		(member 'a sent)
		(member 'an sent)))

(defun contains-article-p-3 (sent)
	(not 
		(and 
		 (not (member 'the sent))
		 (not (member 'a sent))
		 (not (member 'an sent)))))