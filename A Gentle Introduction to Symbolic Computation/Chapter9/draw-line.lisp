(defun draw-line (n)
	(labels ((draw-line-recursively (mx result)
				(if (> mx n) result
					(draw-line-recursively (+ mx 1) 
						(format t "*")))))
		(draw-line-recursively 1 (format t "~&"))))

(defun draw-box (width height)
	(labels ((draw-box-recursively (n result) 
				(if (> n height) result
					(draw-box-recursively (+ n 1)
						(mapcar #'draw-line (list width))))))
		(draw-box-recursively 1 nil)))

