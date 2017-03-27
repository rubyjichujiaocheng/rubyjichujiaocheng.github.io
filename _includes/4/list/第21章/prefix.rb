def prefix(ary, obj)
  result = []               # 初始化结果数组
  ary.each do |item|        # 逐个检查元素
    result << item          # 将元素追加到结果数组中
    if item == obj          # 如果元素与条件一致
      return result         # 返回结果数组
    end
  end
  return result             # 所有元素检查完毕的时候
end

prefix([1, 2, 3, 4, 5], 3)  #=> [1, 2, 3]
