--# -coding=utf8
resource SmartParadigm = {
  
  param Case = Nom | Gen | Dat | Acc ;
  param Number = Sg | Pl ;
  oper
    Noun : Type = { s : Number => Case => Str } ;
    regNoun : Str -> Noun = \n ->
      let um = umlaut n in
      { s = table Number { Sg =>
			     table Case {
			       Nom | Dat | Acc => n ;
			       Gen => n + "es"
			     } ;
			   Pl =>
			     table Case {
			       Nom | Gen | Acc=> um + "er" ;
			       Dat => um + "ern"
			     }
	  }
      } ;
    umlaut : Str -> Str = \s -> 
      case s of {
	p + "a" + s => p + "ä" + s ;
	_ => s
      } ;
}
      
    