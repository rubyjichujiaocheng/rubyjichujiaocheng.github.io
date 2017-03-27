x = 1            # 初始化x
y = 1            # 初始化y
ary = [1, 2, 3]

ary.each do |x|  # 将x作为块变量使用
  y = x          # 将x赋值给y
end

p [x, y]         # 确认x与y的值
