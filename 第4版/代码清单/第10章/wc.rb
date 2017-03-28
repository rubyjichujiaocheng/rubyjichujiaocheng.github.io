ltotal=0                             # 行数合计
wtotal=0                             # 单词数合计
ctotal=0                             # 字数合计
ARGV.each do |file|
  begin
    input = File.open(file)          # 打开文件（A）
    l=0                              # file内的行数
    w=0                              # file内的单词数
    c=0                              # file内的字数
    input.each_line do |line|
      l += 1
      c += line.size
      line.sub!(/^\s+/, "")          # 删除行首的空白符
      ary = line.split(/\s+/)        # 用空白符分解
      w += ary.size
    end
    input.close                      # 关闭文件
    printf("%8d %8d %8d %s\n", l, w, c, file)  # 整理输出格式
    ltotal += l
    wtotal += w
    ctotal += c
  rescue => ex
    print ex.message, "\n"           # 输出异常信息（B）
  end
end

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")
