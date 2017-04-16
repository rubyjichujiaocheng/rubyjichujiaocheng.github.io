class C1                    # 定义C1
  def hello                 # 定义hello
    "Hello"
  end
end

class C2 < C1               # 定义继承了C1 的子类C2
  alias old_hello hello     # 设定别名old_hello
  
  def hello               # 重定义hello
  "#{old_hello}, again"
  end
end

obj = C2.new
p obj.old_hello             #=> "Hello"
p obj.hello                 #=> "Hello, again