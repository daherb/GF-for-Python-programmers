from enum import Enum

class Number(Enum):
    Sg = 1
    Pl = 2
class Case(Enum):
    Nom = 1
    Gen = 2 
    Dat = 3
    Acc = 4
def smartNoun(n) :
  nomSg = n
  genSg = n + "s"
  datSg = n
  accSg = n
  nomPl = umlaut(n) + "er"
  genPl = nomPl
  datPl = nomPl + "n"
  accPl = nomPl
  return {
      Number.Sg: {
          Case.Nom: nomSg,
          Case.Gen: genSg,
          Case.Dat: datSg,
          Case.Acc: accSg
      },
      Number.Pl: {
          Case.Nom: nomPl,
          Case.Gen: genPl,
          Case.Dat: datPl,
          Case.Acc: accPl
      }
  }

def umlaut_fp(s) : return ''.join(list(map((lambda x: 'ä' if x == 'a' else x ),s)))
        
def umlaut_lss(s) : return ['ä' if x == 'a' else 'ö' if x == 'o' else 'ü' if x == 'u' else x for x in s]  
