require 'find'

IGNORES = [ /^\./, /^CVS$/, /^RCS$/ ]

def listdir(top)
  Find.find(top) do |path|
    if FileTest.directory?(path)  # 如果path是目录
      dir, base = File.split(path)
      IGNORES.each do |re|
        if re =~ base             # 需要忽略的目录
          Find.prune              # 忽略该目录下的内容的查找
        end
      end
      puts path                   # 输出结果
    end
  end
end

listdir(ARGV[0])
