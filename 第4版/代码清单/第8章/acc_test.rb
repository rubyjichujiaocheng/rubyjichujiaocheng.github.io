class AccTest
  def pub
    puts "pub is a public method."
  end

  public :pub   # 把pub方法设定为public（可省略）

  def priv
    puts "priv is a private method."
  end

  private :priv # 把priv方法设定为private
end

acc = AccTest.new
acc.pub
acc.priv
