# encoding: utf-8
Dir.glob("*.txt") do |filename|
  if filename == "ルビー.txt"
    puts "found."; exit
  end
end
puts "not found."
