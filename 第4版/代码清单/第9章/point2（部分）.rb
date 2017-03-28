class Point
　…
  def [](index)
    case index
    when 0
      x
    when 1
      y
    else
      raise ArgumentError, "out of range `#{index}'"
    end
  end

  def []=(index, val)
    case index
    when 0
      self.x = val
    when 1
      self.y = val
    else
      raise ArgumentError, "out of range `#{index}'"
    end
  end
end

point = Point.new(3, 6)
p point[0]           #=> 3
p point[1] = 2       #=> 2
p point[1]           #=> 2
p point[2]           #=>错误（ArgumentError）
