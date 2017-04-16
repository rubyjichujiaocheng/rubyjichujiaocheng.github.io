require "csv"             # 使用csv库

code = ARGV[0]            # 读取参数
start_time = Time.now     # 获取操作开始时间

# 将Shift_jis转换为UTF-8后打开CSV文件
CSV.open("KEN_ALL.CSV", "r:Shift_jis:UTF-8") do |csv|
  csv.each do |record|
    # 邮政编码与参数指定的一致则输出该记录
    puts record.join(" ") if record[2] == code
  end
end
p Time.now - start_time   # 输出结束时间与开始时间之差