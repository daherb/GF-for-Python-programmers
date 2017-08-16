resource Comparison = open Prelude in {
  oper
    -- first we declare types
    myrecord : { one   : Predef.Int ;
                 two   : Predef.Int ;
                 three : Predef.Int ;
                 four  : Predef.Int };
    mytable  : Str => Predef.Int;
    myfunc   : Str -> Predef.Int;

    -- then we define values
    myrecord =        { one = 1 ; two = 2 ; three = 3 ; four = 4 };
    mytable  = table { "one"   => 1
                     ; "two"   => 2
                     ; "three" => 3
                     ; "four"  => 4
                     ; _       => 0 };
    myfunc s = ifTok Predef.Int s "one"   1   (
               ifTok Predef.Int s "two"   2   (
               ifTok Predef.Int s "three" 3   (
               ifTok Predef.Int s "four"  4 0)));

}