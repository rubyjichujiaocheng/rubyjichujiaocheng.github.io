module MyModule
  # 希望提供的共通方法等
end

class MyClass1
  include MyModule
  # MyClass1中特有的方法等
end

class MyClass2
  include MyModule
  # MyClass2中特有的方法等
end
