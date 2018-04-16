resource Functions = open Prelude,Predef in {
  oper
    succ : Int -> Int; -- Declaration
    succ i = plus i 1 ; -- Definition
    succ2 : Int -> Int = -- Declaration
      \i -> plus i 1; -- Definition
}