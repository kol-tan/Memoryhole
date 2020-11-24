reader = open("#location goes here", "r")
filler = ""
for line in reader:
    strippedLine = line.rstrip() + " "
    filler +=strippedLine
reader.close()
open("#location goes here", "w").write(filler)
