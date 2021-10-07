(defun randlist ()
  (let ((lst ()))
    (dotimes (i 15)
       (setf lst (cons (1+ (random 25)) lst)))
   lst))

(randlist)

(defun get-n-rand (n)
  (cl-loop for i = (cl-adjoin (1+ (random 25)) i)
        when (= (length i) n) return i))

(get-n-rand 15)
