string = "Today, is the greatest ddaayyy ever!"
string.downcase!
frq_hash = Hash.new
ary = string.scan(/\w+/)
ary.each do |str|
  inner_hash = Hash.new
  for char in ('a'...'z')
    count_freq = str.count(char)
    if count_freq > 1
      inner_hash[char] = count_freq
    end
    frq_hash[str] = inner_hash if count_freq > 1
  end
end
frq_hash = Hash[frq_hash.sort_by{ |k, v| v.length }.reverse]
puts frq_hash

x = false
frq_hash.keys.each do |key|
  print "\b\b"
  print " followed by \n" if x
  print "#{key} has "
  frq_hash[key].keys.each do |char|
    print "#{frq_hash[key][char]}\'#{char}, "
  end
  x = true
end
puts ""