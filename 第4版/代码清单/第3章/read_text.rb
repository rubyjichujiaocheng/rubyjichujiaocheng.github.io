filename = ARGV[0]
file = File.open(filename) # ①
text = file.read           # ②
print text                 # ③
file.close                 # ④
