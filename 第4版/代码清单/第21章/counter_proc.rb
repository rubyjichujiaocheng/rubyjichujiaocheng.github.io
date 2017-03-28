def counter
  c = 0          # 初始化计数器
  Proc.new do    # 每调用1次call方法，计数器加1
    c += 1       # 返回加1后的Proc对象
  end
end

# 创建计数器c1并计数
c1 = counter
p c1.call      #=> 1
p c1.call      #=> 2
p c1.call      #=> 3

# 创建计数器c2并计数
c2 = counter   # 创建计数器c2
p c2.call      #=> 1
p c2.call      #=> 2

# 再次用c1计数
p c1.call      #=> 4
