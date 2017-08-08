from nltk import CFG,ChartParser
from nltk.tokenize import SpaceTokenizer
grammar = CFG.fromstring("""
  S -> NP VP
  NP -> Det N
  VP -> IV
  Det -> 'the'
  N -> 'man'
  N -> 'men'
  IV -> 'walks'
  IV -> 'walk'
  """)
parser = ChartParser(grammar)
parses = parser.parse_all(SpaceTokenizer().tokenize("the man walk"))
#>>> parses
#[Tree('S', [Tree('NP', [Tree('Det', ['the']), Tree('N', ['man'])]), Tree('VP', [Tree('IV', ['walk'])])])]
