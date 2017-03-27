require "open-uri"
require "nkf"

url = "http://cruel.org/freeware/cathedral.html"
filename = "cathedral.html"

File.open(filename, "w") do |f|
  text = open(url).read
  f.write text                  # UTF8环境使用此段代码
  #f.write NKF.nkf("-s", text)  # Shift_JIS环境（日语Windows）使用此段代码
end
