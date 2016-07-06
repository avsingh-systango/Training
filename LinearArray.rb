ary = [1,[2,3],4,5,["Anurag"],"singh",[12,13,14,15,16,[13,15,[16,17]]]]
@linear_ary = []
ary.each do |element|
  def traverse array
    array.each do |element|
      if element.is_a?(Array)
        traverse element
      else
        @linear_ary.push(element)
      end
    end
  end
  if element.is_a?(Array)
    traverse element
  else
     @linear_ary.push(element)
  end
end
print @linear_ary 
puts ""