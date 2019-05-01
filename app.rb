def gets_name
  puts "Enter your name"
  name = gets.chomp
  puts "Hello #{name}, welcome to the calculator"
end

def advanced_calc
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
end

def basic_calc


  puts "Enter the 1st number of the equation you want solved"
  num1 = gets.chomp
  float_num1 = eval(num1).to_f
  string_num1 = float_num1.to_s



  puts "Enter the operator of the equation you want solved (Use + - * /)"
  operator = gets.chomp
  puts "Enter the 2nd number of the equation you want solved"
  num2 = gets.chomp

  puts "#{num1} #{operator} #{num2} = #{eval(string_num1 + operator + num2)}"
end

def bmi_calc
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
end

def trip_calc
  puts "How far are you going? (In Miles)"
  distance = gets.chomp.to_f
  puts "What is the fuel efficiency of your car? (In MPG)"
  fuel_efficiency = gets.chomp.to_f
  puts "What is your cost per gallon?"
  cpg = gets.chomp.to_f
  puts "What will your average speed be? (In MPH)"
  speed = gets.chomp.to_f

  time = distance/speed
  cost = (distance / fuel_efficiency) * cpg


  if speed <= 60

    puts "The journey will take you #{time} hours and cost you £#{cost}."

  elsif speed > 60
    fuel_efficiency = fuel_efficiency - 2*(speed - 60)

    if fuel_efficiency > 10

      puts "The journey will take you #{time} hours and cost you £#{cost}."

    elsif fuel_efficiency <= 10 && fuel_efficiency > 0
      fuel_efficiency = 10
      puts "The journey will take you #{time} hours and cost you £#{cost}."


    else
      puts "This is invalid"
      puts fuel_efficiency

    end
  end
end

def start_calc
  puts "Would you like to use the (a) advanced, (b) basic, (c) BMI or (d) Trip Calculator?"
  type = gets.chomp

  if type == "a"

    advanced_calc

  elsif type == "b"

    basic_calc

  elsif type == "c"

    bmi_calc

  elsif type == "d"

    trip_calc

  else
    puts "Not a valid input"
  end
end

gets_name
start_calc
