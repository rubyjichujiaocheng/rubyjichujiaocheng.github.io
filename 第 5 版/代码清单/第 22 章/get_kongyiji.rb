require "open-uri"

url = "http://www.ituring.com.cn/article/274457"
filename = "kongyiji.html"

File.open(filename, "wb") do |f|
  text = open(url, "r:utf-8").read
  f.write text # UTF8环境使用此段代码
  #f.write text.encode("GB18030") # 简体中文环境（中文简体版Windows）使用此段代码
end