concrete List4 of List4Abs = {
  lincat
    Digit = Str ;
    [Digit] = { hd : Str ; tl : Str } ;
  lin
    BaseDigit = { hd = "" ; tl = "" } ;
    ConsDigit d ds = { hd = d ; tl = ds.hd ++ ds.tl };
    head ds = ds.hd ;
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
}