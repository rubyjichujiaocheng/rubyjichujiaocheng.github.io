3.times do |i|
  $stdout.puts "#{Random.rand}\n"  # 标准输出
  $stderr.puts "已经输出了#{i+1}次\n"  # 标准错误输出
end