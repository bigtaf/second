#lang racket
( define multirember
   ;; gives the name of the function
   ;; the name tells us what type of function it is
   
   (lambda (a lat)
     ;; lambda creates the function
     ;; this is the function we refer to when execution is in place
     ;; gives us the condition
     (cond ;; asks the question        
       (null? lat) (quote())) ;; checks if it is a null lat
                              ;; sees if the list is empty
                              ;; lat checks each S-expression (atom) in a list
                              ;;
   
     (else 
      (cond ;; asks the next question if lat isn't empty
        ((eq? (car lat) a) ;; asks if the first atom is equal to a
         (multirember a (cdr lat))) ;; after the occurance of a it calls upon the recurrance of multirember
        (else (cons(car lat) ;; saves the value of an atom to be consed later
                   (multirember a
                      ( cdr lat)))))))) ;;calls the function with the cdr lat

(multirember 'x '(x y x z x))