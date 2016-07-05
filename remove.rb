class Array
  def remove *chars
    array_new = []
    self.each do |element|
      count = 0
      chars.each do |char|
        if !element.include?(char)
          count += 1
        end
      end
      if count < 2
        array_new.push(element)
      end
    end
    return self - array_new
  end
end

puts %w{one two three four five six seven eight nine ten}.remove("i","o")
