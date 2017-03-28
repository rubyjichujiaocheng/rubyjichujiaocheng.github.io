x = y = z = 0       # 初始化x、y、z
ary = [1, 2, 3] 
ary.each do |x; y|  # 使用块变量x，块局部变量y
  y = x             # 代入块局部变量y
  z = x             # 代入不是块局部变量的变量z
  p [x, y, z]       # 确认块内的x、y、z的值
end 
puts
p [x, y, z]         # 确认x、y、z的值
