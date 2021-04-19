
from compression import *    

patternCount = 100
chainCount = 16
patternBits = 8

combinedPatterns, separatedPatterns = generatePatterns(chainCount, patternBits, patternCount)

printPatternStatistics(combinedPatterns)
print()

findGraph(combinedPatterns)
print()
