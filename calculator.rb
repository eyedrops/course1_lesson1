puts 'enter your first value'
num1 = gets.chomp

puts 'enter your second value'
num2 = gets.chomp

puts "select operation. 1 = addition; 2 = subtraction; 3 = multiplication; 4 = division"
op = gets.chomp

if op == '1'
  op = '+'
  ans = num1.to_i + num2.to_i
  elsif op == '2'
  op = '-'
  ans = num1.to_i + num2.to_i
  elsif op == '3'
  op = '*'
  ans = num1.to_i * num2.to_i
  elsif op == '4'
  op = '/'
  ans = num1.to_f / num2.to_f
else puts 'invalid entry for operation'
end

puts "#{num1} #{op} #{num2} = #{ans}"