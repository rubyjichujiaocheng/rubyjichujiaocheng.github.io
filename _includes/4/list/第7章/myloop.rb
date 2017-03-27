def myloop
  while true
    yield               # 执行块
  end
end

num = 1                 # 初始化num
myloop do
  puts "num is #{num}"  # 输出num
  break if num > 100    # num超过100时跳出循环
  num *= 2              # num乘2
end
