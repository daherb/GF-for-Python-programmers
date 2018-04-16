resource Case = open Predef in {
  oper
    case1 : Int -> Str;
    case1 i =
      case i of {
	1 => "1a" ;
	2 => "2a" ; 
	_ => "3a"
      } ;

    case2 : Str -> Str;
    case2 s =
      case s of {
	_ + "a" => "Ends in a" ;
	_ + "a" + _ => "Contains a" ;
	_ => "No as"
      } ;
}