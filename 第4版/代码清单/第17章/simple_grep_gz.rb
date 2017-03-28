pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
if /.gz$/ =~ filename
  file = IO.popen("gunzip -c #{filename}")
else
  file = File.open(filename)
end
file.each_line do |text|
  if pattern =~ text
    print text
  end
end
