#Menu

#(a) - addition
#(q) - quit


require 'pry'


puts "Welcome to our calculator"
puts ""
def menu
puts ""
puts "(a) - addition"
puts "(d) - divide"
puts "(e) - exponent"
puts "(m) - multiply"
puts "(s) - subtraction"
puts "(sq) - square_root"
puts "(q) - quit"
print "Enter your choice:"
gets.chomp()
end

user_choice = menu()

def add
  #Ask the user for two numbers
print "What is your first number?"
first_num = gets.to_f
print "What is your second number?"
second_num = gets.to_f

result = first_num + second_num
puts "The result is #{result}"
# puts "The result is #{first_num + second_num}"
end

def subtract
  print "What is your first number?"
  first_num = gets.to_f
  print "What is your second number?"
  second_num = gets.to_f

  result = first_num - second_num
  puts "The result is #{result}"

end

def multiply
  print "What is your first number?"
  first_num = gets.to_f
  print "What is your second number?"
  second_num = gets.to_f

  result = first_num * second_num
  puts "The result is #{result}"


end

def divide
  print "What is your first number?"
  first_num = gets.to_f
  print "What is your second number?"
  second_num = gets.to_f

  result = first_num / second_num
  puts "The result is #{result}"

end

def exponent
  print "What is your base number?"
  first_num = gets.to_f
  print "What is your exponent number?"
  second_num = gets.to_f

  result = first_num ** second_num
  puts "The result is #{result}"

end

def square_root
  print "What is your number that you would like the square root for?"
  first_num = gets.to_f
  # print "What is your exponent number?"
  # second_num = gets.to_f

  result = Math.sqrt(first_num)
  puts "The result is #{result}"

end







# binding.pry # Very similar to the debugger in JavaScript

until user_choice == "q"
# binding.pry
case user_choice
when "a" then add()
when "d" then divide()
when "e" then exponent()
when "s" then subtract()
when "sq" then square_root()
when "m" then multiply()
else
  puts "That is not a valid option"
end


  user_choice = menu()
end

puts ""
puts "Thanks for using our lovely calculator!"
