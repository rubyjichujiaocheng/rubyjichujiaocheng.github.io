filename = ARGV[0]
file = File.open(filename) # ① 打开文件
text = file.read           # ② 读取文本
print text                 # ③ 输出文本
file.close                 # ④ 关闭文件