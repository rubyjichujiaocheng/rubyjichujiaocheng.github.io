require "open-uri" 

# 通过HTTP读取数据 
open("http://www.ruby-lang.org") do |io| 
  puts io.read  # 将Ruby的官方网页输出到控制台 
end 

# 通过FTP读取数据
url = "ftp://www.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p0.tar.gz"
open(url) do |io| 
  open("ruby-2.0.0-p0.tar.gz", "w") do |f|  # 打开本地文件
    f.write(io.read) 
  end 
end
