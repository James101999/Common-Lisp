(setf a '(soap water))

(union a '(no soap radio))

(intersection a (reverse a))

(set-difference a '(stop for water))

(set-difference a a)

(member 'soap a)

(member 'water a)

(member 'washcloth a)