module HelloModule          # module关键字
  Version = "1.0"           # 定义常量

  def hello(name)           # 定义方法
    puts "Hello, #{name}."
  end

  module_function :hello    # 指定hello方法为模块函数
end

p HelloModule::Version      #=> "1.0"
HelloModule.hello("Alice")  #=> Hello, Alice.

include HelloModule         # 包含模块
p Version                   #=> "1.0"
hello("Alice")              #=> Hello, Alice.
