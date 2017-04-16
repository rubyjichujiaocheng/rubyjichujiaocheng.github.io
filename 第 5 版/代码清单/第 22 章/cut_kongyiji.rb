htmlfile = "kongyiji.html"
textfile = "kongyiji.txt"

html = File.read(htmlfile) #html = File.read(htmlfile, mode: "rb:GB18030") # 译者注：简体中文环境（中文简体版Windows）使用此段代码

File.open(textfile, "w") do |f|
  in_header = true
  html.each_line do |line|
    if in_header && /<div class="post-text">/ !~ line
      next
    else
      in_header = false
    end
    break if /<div class="copyright-announce">/ =~ line
    f.write line
  end
end