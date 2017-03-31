    # encoding: utf-8
    
    ## 用GBK编码创建gbk.txt
    File.open("gbk.txt","w:GBK") do |f|
      f.write("你好")
    end
    
    ## 打开gbk.txt，按UTF-8编码方式输出
    File.open("gbk.txt","r:GBK") do |f|
      str = f.read
      ## str的编码为GBK，因此在使用puts输出时需将其转换为UTF-8编码
      puts str.encode("UTF-8")
    end