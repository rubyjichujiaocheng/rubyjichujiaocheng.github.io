class Point
  attr_accessor :x, :y   # 定义存取器
  protected :x=, :y=     # 把x=与y=设定为protected

  def initialize(x=0.0, y=0.0)
    @x, @y = x, y
  end

  def swap(other)        # 置换x、y值的方法
    tmp_x, tmp_y = @x, @y
    @x, @y = other.x, other.y
    other.x, other.y = tmp_x, tmp_y   # 在同一个类中
                                      # 可以被调用
    return self
  end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)
p [ p0.x, p0.y ]         #=> [0.0, 0.0]
p [ p1.x, p1.y ]         #=> [1.0, 2.0]

p0.swap(p1)
p [ p0.x, p0.y ]         #=> [1.0, 2.0]
p [ p1.x, p1.y ]         #=> [0.0, 0.0]

p0.x = 10.0              #=> 错误（NoMethodError）
