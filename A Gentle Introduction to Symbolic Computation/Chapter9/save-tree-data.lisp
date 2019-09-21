(defun save-tree-data (tree-loc tree-table num-trees)
	(with-open-file (stream "timbernew.dat" :direction :output)
		(format stream "~S~%" tree-loc)
		(format stream "~S~%" tree-table)
		(format stream "~S~%" num-trees)))

(save-tree-data
	"The West Ridge"
	'((45 redwood) (22 oak) (43 maple))
	110)