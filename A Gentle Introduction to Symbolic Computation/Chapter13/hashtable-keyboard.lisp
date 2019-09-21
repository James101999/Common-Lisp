(setf *crypto-text*
	'("zj ze kljjls jf slapzi ezvlij pib kl jufwxuj p hffv jupi jf"
		"enlpo pib slafml pvv bfwkj"))

(setf *encipher-table* (make-hash-table))
(setf *decipher-table* (make-hash-table))

(defun make-substitution (ch1 ch2)
	(setf (gethash ch1 *decipher-table*)
		ch2)
	(setf (gethash ch2 *encipher-table*)
		ch1))

(defun undo-substitution (ch)
	(setf (gethash (gethash ch *decipher-table*)
	 		*encipher-table*) nil)
	(setf (gethash ch *decipher-table*) nil))

(defun clear ()
	(clrhash *encipher-table*)
	(clrhash *decipher-table*))

(defun decipher-string (str)
	(do* ((n 0 (+ n 1))
		  (chr (gethash (aref str n) *decipher-table*) 
		  	(if (= n (length str)) (return new) 
		  		(gethash (aref str n) *decipher-table*)))
		  (new (make-string (length str) :initial-element #\Space)))
		 (nil)
	 (if (not (null chr))
	 	(setf (aref new n) chr))))

(defun show-line (str)
	(format t "~&~A~%~A~%~%" 
		str
		(decipher-string str)))

(defun show-text (cryptogram)
	(dolist (elem cryptogram)
		(show-line elem)))

(defun get-first-char (x)
	(char-downcase
		(char (format nil "~A" x) 0)))

(defun read-letter ()
	(format t "Substitute which letter? ")
	(finish-output)
	(let ((input (read)))
		(cond ((or (equal input 'end) 
				   (equal input 'undo)) input)
			   (t (get-first-char input)))))

(defun sub-letter (chr)
	(cond ((gethash (get-first-char chr) *decipher-table*)
		   	(format t "~&~A~A~A has already been deciphered as ~A~A~A!~%"
			 		"'" chr "'" "'" (gethash chr *decipher-table*) "'"))
		   (t (format t "~&What does ~A~A~A decipher to? "
		   	 	"'" chr "'")
			  (finish-output)
			  (let ((input (read)))
			       (cond ((gethash 
			       	(get-first-char input) *encipher-table*)
						 (format t 
					"~&But ~A~A~A already deciphers to ~A~A~A!~%"
			 		"'" (gethash 
			 			(get-first-char input)
			 			 *encipher-table*) "'"
			 		"'" input "'"))
			       		 (t (make-substitution 
			       		 	(get-first-char chr)
			       		 	(get-first-char input))))))))

(defun undo-letter ()
	(format t "~&Undo which letter? ")
	(finish-output)
	(let ((input (read)))
		(if (gethash (get-first-char input) *decipher-table*)
			(undo-substitution (get-first-char input))
			(format t "~&~A not found!" input))))

(defun solve (cryptogram)
	(do ((answer nil))
		(nil)
	(format t "~&--------------------~%")
	(show-text cryptogram)
	(format t "~&--------------------~%")
	(setf answer (read-letter))
	(cond ((characterp answer)
			(sub-letter answer))
		  ((equal answer 'undo)
		  	(undo-letter))
		  ((equal answer 'end)
		  	(return t))
		   (t (format t "~&Invalid input!")))))

;zj ze kljjls jf slapzi ezvlij pib kl jufwxuj p hffv jupi jf
;it is better to remain silent and be thought a fool than to

;enlpo pib slafml pvv bfwkj
;speak and remove all doubt