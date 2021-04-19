import random
from copy import deepcopy as dp
from prob5 import *

random.seed(0)
prob1 = 2
prob0 = 3

RED =  "\u001b[31m"
GREEN = "\u001b[32m"
BLUE = "\u001b[34m"
END = "\u001b[0m"
EQUAL = GREEN + "EQ" + END
NOT = BLUE + "NT" + END
NONE = "NN"
CONTRADICTION = RED + "CO" + END

patternCount = 1
chainCount = 16
patternBits = 8

combinedPatterns = [[] for x in range(chainCount)]
separatedPatterns = []
for patternIndex in range(patternCount):
    scanChains = []
    for chainIndex in range(chainCount):
        
        scanChain = []
        for bitIndex in range(patternBits):
            scanChain.append(getNextBit())

        scanChains.append(scanChain)
        combinedPatterns[chainIndex].extend(scanChain)
    separatedPatterns.append(scanChains)

printPatterns(combinedPatterns)