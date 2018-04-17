concrete Test of TestAbs = {
  param
    Gender = F | M ;
    Number = Sg | Pl ;
    Case = Nom | Gen  ;
  param
    Person = P1 | P2 | P3 ;
  lincat
    S = Str ;
    NP = { s : Case => Str ; g : Gender } ;
    Det = { s : Str ; n : Number } ;
    N = { s : Number => Case => Str ; g : Gender } ;
    VP, V = Number => Person => Str ;
  lin

    sleep = -- Declaration
      table { -- Definition
	Sg => table {
	  P1 => "sleep" ;
	  P2 => "sleep" ;
	  P3 => "sleeps" 
	  } ;
	Pl => table {
	  P1 => "sleep" ;
	  P2 => "sleep" ;
	  P3 => "sleep" 
	  }
      };
    theSg = -- Declaration
      { s = "the" ; n = Sg } ; -- Definition
    
    man -- Declaration
      = { s = table {
	    Sg => table {
	      Nom => "man" ;
	      Gen => "man's" ;
	      Dat => "man" ;
	      Acc => "man"
	      } ;
	    Pl => table {
	      Gen => "men's" ;
	      _ => "men" } 
	    } ;
	  g = M
      } ;
    mkNP det n = "???" ;
    mkVP v = "???" ;
    mkS np vp = "???";
}