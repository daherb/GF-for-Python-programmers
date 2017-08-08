from nltk import CFG,ChartParser
from nltk.tokenize import SpaceTokenizer
grammar = CFG.fromstring("""
  S -> NP VP
  NP -> Det N
  VP -> IV
  Det -> 'the'
  N -> 'man'
  IV -> 'walks'
  """)
#>>> grammar
#<Grammar with 14 productions>
#>>> grammar.start()
#S
#>>> grammar.productions()
#[S -> NP VP, NP -> Det N, VP -> IV, Det -> 'the', N -> 'man', IV -> 'walks']
parser = ChartParser(grammar)
parses = parser.parse_all(SpaceTokenizer().tokenize("the man walks"))
#>>> parses
#[Tree('S', [Tree('NP', [Tree('Det', ['the']), Tree('N', ['man'])]), Tree('VP', [Tree('IV', ['walks'])])])]
