# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
  # ^ this converts input to an integer then a string. It input is not the same
  # going out as it was going in, it will be rejected. This is because
  # anything that doesn't match will return "0" and be false e.g. "ajnkwer" will
  # return "0"
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['es']['welcome'])

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt(MESSAGES['es']['valid_name'])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt("That doesn't look right, please try again.")
    end
  end

  # Kernel.puts("The number is " + number1 + "!")

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt("That doesn't look right, please try again.")
    end
  end

  # Kernel.puts("The number is " + number2 + "!")

  operator_prompt = <<-MSG
    What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  # if operator == "1"
  #   result = number1.to_i + number2.to_i
  # elsif operator == "2"
  #   result = number1.to_i - number2.to_i
  # elsif operator == "3"
  #   result = number1.to_i * number2.to_i
  # elsif operator == "4"
  #   result = number1.to_f / number2.to_f
  # else
  #   prompt("Sorry, I didn't recognize your choice.")
  # end

  # refactored to a case statement

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation? Y to calculate again.")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using my Calculator! Good bye.")
