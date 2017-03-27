file = File.open(ARGV[0])
file.each_line do |line|
  next if /^\s*$/ =~ line  # 空行
  next if /^#/ =~ line     # 以“#”开头的行
  puts line
end