from compression import *

patternCount = 1500
chainCount = 16
patternBits = 8
combinedPatterns, separatedPatterns = generatePatterns(chainCount, patternBits, patternCount)

# printPatterns(separatedPatterns)

implications = findImplications(combinedPatterns)
printImplications(implications, False)
cycleConfigs = findConfigurationLayout(combinedPatterns)
print()

findGraph(combinedPatterns)

patterns1 = {}
for x in range(chainCount):
    patterns1[x] = []

patterns2 = {}
for x in range(chainCount):
    patterns2[x] = []

for index, config in enumerate(cycleConfigs):
    if config:
        for pattern in combinedPatterns:
            patterns1[pattern].append(combinedPatterns[pattern][index])
    else:
        for pattern in combinedPatterns:
            patterns2[pattern].append(combinedPatterns[pattern][index])

findGraph(patterns1)
print()
findGraph(patterns2)