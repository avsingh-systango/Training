@i = 1
@j = 10
puts "\nWhile Loop\n"
while @i <= @j
  puts "2 * #@i = #{@i * 2} \n"
  @i += 1
end

puts "\nBegin followed by While\n"
@i = 1
begin
  puts "2 * #@i = #{@i * 2} \n"
  @i += 1
end while @i <= @j

puts "\nUntil"
@i =1
until @i >= @j do
  puts "2 * #@i = #{@i * 2} \n"
  @i += 1
end

puts "\nBegin followed by until\n"
@i = 1
begin
  puts "2 * #@i = #{@i * 2} \n"
  @i += 1
end until @i > @j

puts "\n For Loops"
@i = 1
for @i in 1..10
   puts "2 * #@i = #{@i * 2} \n"
  @i += 1
end

puts "\n For each Loops"
@i = 1
(1..10).each do |j|
  puts "2 * #{j} = #{j * 2} \n"
end

