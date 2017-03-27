class HelloWorld                   # class语句
  def initialize(myname = "Ruby")  # initialize方法
    @name = myname                 # 初始化实例变量
  end

  def hello                        # 实例方法
    puts "Hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
