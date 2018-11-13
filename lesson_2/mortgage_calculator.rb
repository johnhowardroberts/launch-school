# start

def prompt(message)
  puts ">>> #{message}"
end

def integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def float?(num)
  num.to_f.to_s == num && num.to_f > 0
end

def positive_number?(num)
  integer?(num) || float?(num)
end

def apr_valid?(num)
  (num.to_i.to_s == num && num.to_i >= 0) ||
    (num.to_f.to_s == num && num.to_f >= 0)
end

def years_valid?(num)
  num.to_i.to_s == num && num.to_i >= 10
end

def months_valid?(num)
  num.to_i.to_s == num && (num.to_i < 12 && num.to_i >= 0)
end

MONTHS_IN_YEAR = 12

# Ask for three pieces of information

# - the loan amount in dollars
# - - this must be a positive integer or float, saved in a variable
# - - - there is no minimum loan amount

prompt "What is the mortage amount in $USD?"

mortgage_amount = ''

loop do
  mortgage_amount = gets.chomp

  if positive_number?(mortgage_amount)
    prompt "Thank you."
    break
  else
    prompt "That doesn't look right, please enter an amount over $0."
  end
end

# - the Annual Percentage Rate (APR)
# - - this must be a positive integer or float, saved in a variable
# - - - a no-interest loan of 0% should be allowed

prompt "What is the Annual Percentage Rate (APR)?"

apr = ''

loop do
  apr = gets.chomp

  if apr_valid?(apr)
    prompt "Thank you."
    break
  else
    prompt "That doesn't look right, please enter an APR of at least 0.0%."
  end
end

# - the loan duration
# - - must take the number of years and months as separate variables
# - - - the minimum length of a mortgage is 10 years

prompt "What is the length of the mortgage? Enter number of years, \
followed by the number of months. The minimum mortgage length is \
10 years."

mortgage_years = ''
mortgage_months = ''

loop do
  prompt "Number of years:"
  mortgage_years = gets.chomp
  if years_valid?(mortgage_years)
    break
  else
    prompt "Error. Please enter the number of whole years above or \
    equal to 10."
  end
end

loop do
  prompt "Number of months:"
  mortgage_months = gets.chomp
  if months_valid?(mortgage_months)
    break
  else
    prompt "Error. Please enter the number of months between 0 and 11."
  end
end

# End of user input - display all user input in a summary

summary = <<-summary
Thank you!
    ...
    The mortgage amount is $#{mortgage_amount}.
    The Annual Percentage Rate (APR) is #{apr.to_f.round(2)}%.
    The length of the mortgage is #{mortgage_years} years and #{mortgage_months} months.
summary

prompt(summary)

# When we have the three pieces of information, calculate four things

# - 1. monthly interest rate,  calculated from the APR

monthly_interest_rate = (apr.to_f / 100) / MONTHS_IN_YEAR

# - 2. loan duration in months, calculated from the loan duration

total_mortgage_length_months = (mortgage_years.to_i * MONTHS_IN_YEAR)\
  + mortgage_months.to_i

# - 3. monthly payments 

monthly_payment = mortgage_amount.to_i\
  * (monthly_interest_rate\
  / (1 - (1 + monthly_interest_rate)**-total_mortgage_length_months))

# - 4. total loan cost

total_loan_cost = (monthly_interest_rate * mortgage_amount.to_i\
  * total_mortgage_length_months)\
  / (1 - (1 + monthly_interest_rate)**-total_mortgage_length_months)

# print out the monthly payment amount and the total loan cost

# calculating ux

calculating = <<-calc
...
    Calculating...
    ...
calc

prompt(calculating)

prompt "Your monthly payment is $#{monthly_payment.round(2)}"
prompt "Your total loan cost is $#{total_loan_cost.round(2)}"

# stop
