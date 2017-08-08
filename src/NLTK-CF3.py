from nltk import CFG,ChartParser
from nltk.tokenize import SpaceTokenizer
grammar = CFG.fromstring("""
  S -> NP_Sg VP_Sg
  S -> NP_Pl VP_Pl
  NP_Sg -> Det N_Sg
  NP_Pl -> Det N_Pl
  VP_Sg -> IV_Sg
  VP_Pl -> IV_Pl
  Det -> 'the'
  N_Sg -> 'man'
  N_Pl -> 'men'
  IV_Sg -> 'walks'
  IV_Pl -> 'walk'
  """)
parser = ChartParser(grammar)
parses = parser.parse_all(SpaceTokenizer().tokenize("the man walk"))
#>>> parses
#[]
parses = parser.parse_all(SpaceTokenizer().tokenize("the man walks"))
#>>> parses
#[Tree('S', [Tree('NP_Sg', [Tree('Det', ['the']), Tree('N_Sg', ['man'])]), Tree('VP_Sg', [Tree('IV_Sg', ['walks'])])])]
