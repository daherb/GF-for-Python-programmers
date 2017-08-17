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
    nomPl = (mann.replace('a','ä')
                 .replace('o','ö')
                 .replace('u','ü') + "er")
    return {
        Number.Sg: {
            Case.Nom: mann,
            Case.Gen: mann + "s",
            Case.Dat: mann,
            Case.Acc: mann
      },
      Number.Pl: {
          Case.Nom: nomPl,
          Case.Gen: nomPl,
          Case.Dat: nomPl + "n",
          Case.Acc: nomPl
      }
    }
