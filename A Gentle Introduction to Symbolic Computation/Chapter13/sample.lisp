(setf my-vec '#(tuning violin 440 a))

;(setf *print-array* nil) ;concise
;(setf *print-array* t) ;default full

(aref my-vec 1) ;violin

(setf a '#(nil nil nil nil nil))
(setf (aref a 0) 'foo)
(setf (aref a 1) 37)
(setf (aref a 2) 'bar)
(length a)

(make-array 5 :initial-element 1)
(make-array 5 :initial-contents '(a e i o u))

(length "Cockatoo")
(reverse "Cockatoo")
(aref "Cockatoo" 3)

#\k

(type-of #\k)

(setf pet "Cockatoo")
(setf (aref pet 5) #\p)

(setf h (make-hash-table))
(type-of h)

(setf (gethash 'john h)
	'(attorney (16 maple drive)))

(setf (gethash 'mary h)
	'(physician (23 cedar court)))

(setf (get 'fred 'sex) 'male)
(setf (get 'fred 'age) 23)
(setf (get 'fred 'siblings) '(george wanda))

(get 'fred 'age)
(get 'fred 'favorite-ice-cream-flavor)

(setf (get 'mabel 'siblings) nil)
(get 'mabel 'siblings 'unknown)
(get 'clara 'siblings 'unknown)

(incf (get 'fred 'age))
(get 'fred 'age)

(symbol-plist 'fred)

(remprop 'fred 'age)