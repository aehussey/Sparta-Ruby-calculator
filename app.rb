# puts "Enter your name"
# name = gets.chomp
# puts "Hello #{name}, welcome to the calculator"

puts "Would you like to use the (a) advanced, (b) basic, (c) BMI or (d) Trip Calculator?"
type = gets.chomp

if type == "a"
  
  end



elsif type == "b"
 puts "b"

 puts "Enter the 1st number of the equation you want solved"
 num1 = gets.chomp
 float_num1 = eval(num1).to_f
 string_num1 = float_num1.to_s



 puts "Enter the operator of the equation you want solved (Use + - * /)"
 operator = gets.chomp
 puts "Enter the 2nd number of the equation you want solved"
 num2 = gets.chomp

 puts "#{num1} #{operator} #{num2} = #{eval(string_num1 + operator + num2)}"

elsif type == "c"
  puts "c"

elsif type == "d"
  puts "d"

end
