resource Compound = Param ** {
  -- Content of Param.gf
  -- param
  --   Gender = F | M ;
  --   Number = Sg | Pl ;
  --   Case = Nom | Gen | Acc | Dat ;
  param
    Person = P1 | P2 | P3 ;
  oper
    sleep : Number => Person => Str = -- Declaration
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
    theSg : { s : Str ; n : Number } = -- Declaration
      { s = "the" ; n = Sg } ; -- Definition
    
    man : { s : Number => Case => Str ; g : Gender } -- Declaration
      = { s = table {
	    Sg => table {
	      Nom => "man" ;
	      Gen => "man's" ;
	      Dat => "man" ;
	      Acc => "man"
	      } ;
	    Pl => table { _ => "men" } 
	    } ;
	  g = M
      } ;
}