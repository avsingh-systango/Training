class Array
  def repeat times
    size = self.length * times
    index = 0
    new_array = []
    while index < size
      new_array[index] = self[index / times]
      index += 1
    end
    
    return new_array.inspect
  end
end

ary = Array[:one, "two", 3]
new_array = ary.repeat(4)
puts new_array