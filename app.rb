# puts "Enter your name"
# name = gets.chomp
# puts "Hello #{name}, welcome to the calculator"

puts "Would you like to use the (a) advanced, (b) basic, (c) BMI or (d) Trip Calculator?"
type = gets.chomp

if type == "a"

  puts "Would you like to do (a) square root or (b) power?"
  new_type = gets.chomp
  if new_type == "a"
    puts "What Number would you like to know the square root of?"
    answer = gets.chomp
    float_answer = eval(answer).to_f
    puts Math.sqrt float_answer

  elsif new_type == "b"
    puts "What Number would you like have raised?"
    raise = gets.chomp.to_f
    puts "To what power ould you like it raised"
    power = gets.chomp.to_f
    puts raise**power

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
  puts "Welcome to the BMI claculator, would you like to use the (a) Imperial System or (b) Metric System"
  c_type = gets.chomp

  if c_type == "a"
    puts "What is your weight in pounds?"
    weight = gets.chomp
    float_weight = eval(weight).to_f


    puts "And what is your height in INCHES (Not feet)?"
    height = gets.chomp
    float_height = eval(height).to_f

    puts "Your BMI is #{(float_weight/(float_height) ** 2) * 703}"


  elsif c_type == "b"
    puts "What is your weight in Kilos?"
    weight = gets.chomp
    float_weight = eval(weight).to_f


    puts "And what is your height in centimeters?"
    height = gets.chomp
    float_height = eval(height).to_f

    puts "Your BMI is #{(float_weight/(float_height/100) ** 2)}"

  end
elsif type == "d"
  puts "d"

end
