filename = "buffering.txt"
File.open(filename, "w") do |file|
  file.sync = true                   # 同步写入
  3.times do |i|
    # 检查每写入5个字节后文件的大小
    file.write("a" * 5)
    puts "第#{i+1}次： #{File.size(filename)}"
  end
end
puts "结束后： #{File.size(filename)}"  # 再检查一次
p File.read(filename)                # 确认输出