concrete List5 of List5Abs = {
  lincat
    Digit, Conj = Str ;
    [Digit] = { init : Str ; last : Str } ;
  lin
    BaseDigit d1 d2 = { init = d1 ; last = d2 } ;
    ConsDigit d ds = { init = ds.init ++ "," ++ ds.last ; last = d };
    ConjDigit c ds = ds.init ++ c ++ ds.last ;
    one   = "1" ;
    two   = "2" ;
    three = "3" ;
    four  = "4" ;
    five  = "5" ;
    six   = "6" ;
    seven = "7" ;
    eight = "8" ;
    nine  = "9" ;
    zero  = "0" ;
    and = "and" ;
    or = "or" ;
}