module RubyJichujiaochengHelpers
  def code_list(params = {version: 5, chapter: "第1章", name: 'helloruby.rb'})
    `pwd`
    File.read("./第4版/代码清单/#{params[:chapter]}/#{params[:name]}")
  end
end
