abstract List5Abs = {
  cat
    Digit; [Digit]{2} ; Conj ;
  fun
    one, two, three, four, five, six, seven, eight, nine, zero : Digit ;
    ConjDigit : Conj -> [Digit] -> Digit ;
    and : Conj ;
    or : Conj ;
}
      
      