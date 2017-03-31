def cparsedate(str)
  now = Time.now
  year = now.year
  month = now.month
  day = now.day
  hour = now.hour
  min = now.min
  sec = now.sec 
  str.scan(/(上午|下午)?(\d+)(年|月|日|点|分|秒)/) do
    case $3
    when "年"
      year = $2.to_i
    when "月"
      month = $2.to_i
    when "日"
      day = $2.to_i
    when "点"
      hour = $2.to_i
      hour += 12 if $1 == "下午"
    when "分"
      min = $2.to_i
    when "秒"
      sec = $2.to_i
    end
  end
  return Time.mktime(year, month, day, hour, min, sec)
end

p cparsedate("2010年12月23日下午8点17分50秒")
p cparsedate("12月23日下午8点17分50秒")
p cparsedate("上午8时17分50秒")
p cparsedate("8点17分50秒")
