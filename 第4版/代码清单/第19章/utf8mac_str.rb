# encoding: utf-8
str = "ビ"
puts "size: #{str.size}"
p str.each_byte.map{|b| b.to_s(16)}
puts "size: #{str.encode("UTF8-MAC").size}"
p str.encode("UTF8-MAC").each_byte.map{|b| b.to_s(16)}
