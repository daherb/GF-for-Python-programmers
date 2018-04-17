abstract TestAbs = {
  cat N ; Det ; V ;
      NP ; VP ; S ;
  fun
    man : N ;
    theSg : Det ;
    sleep : V ;
    mkNP : Det -> N -> NP ;
    mkVP : VP -> V ;
    mkS : NP -> VP -> S ;
}