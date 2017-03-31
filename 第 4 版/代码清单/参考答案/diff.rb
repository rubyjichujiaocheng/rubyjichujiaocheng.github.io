    # encoding: utf-8

    str = '鿋'
    
    encoding = [Encoding::GB18030, Encoding::GBK]
    encoding.each do |enc|
      begin
        print "将str转换为#{enc}。=> "
        puts "结果: %p" % [str.encode(enc)]
      rescue => ex
        p ex
      end
      puts
    end