(time(letrec ([valid? (λ (n x)
                   (if(eq? n (apply + (map (λ (v) (- (char->integer v) 48)) (string->list(number->string (expt n x)))))) #t #f))])
  (letrec ([xth (λ (x)
                  (remove* '(*d*) (map (λ (v) (if (valid? v x) (expt v x) '*d*)) (range 1 70))))])
    (list-ref(sort(remove* '(1 2 3 4 5 6 7 8 9) (remove-duplicates(flatten(map xth (range 1 70))))) <)29))))