class Point
　…
  def +@
    dup                     # 返回自己的拷贝
  end

  def -@
    self.class.new(-x, -y)  # 颠倒x、y各自的正负
  end

  def ~@
    self.class.new(-y, x)   # 使坐标翻转90度
  end
end

point = Point.new(3, 6)
p +point  #=> (3, 6)
p -point  #=> (-3, -6)
p ~point  #=> (-6, 3)
