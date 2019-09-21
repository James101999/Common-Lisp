(defun count-the (sentence)
	"Counts how many times the word 'the' appears in a sentence"
	(length (remove-if-not #'(lambda (x) 
					 	(equal x 'the)) sentence)))