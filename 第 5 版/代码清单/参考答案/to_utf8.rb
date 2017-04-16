# encoding: utf-8
    
    def to_utf8(str_gbk, str_gb2312)
      ## 使用encode方法将字符串分别转换为UTF-8编码后再连接
      str_gbk.encode("UTF-8") + str_gb2312.encode("UTF-8")
    end
    
    ## 像下面这样执行
    str_gbk  = "你好".encode("GBK")
    str_gb2312 = "再见".encode("GB2312")
    
    puts to_utf8(str_gbk, str_gb2312)
