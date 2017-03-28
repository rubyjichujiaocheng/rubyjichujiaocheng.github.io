module RubyJichujiaochengHelpers
  def render_code_list(path)
    File.read(path) rescue "Can not read file #{path}"
  end
end
