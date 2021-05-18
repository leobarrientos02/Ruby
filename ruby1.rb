puts( "Hello World")

puts "Leonel Barrientos"

# playing it math
puts 200 + 222

puts 800 / 2.0

puts 5 == 5

puts 3 != 2

#Boolean Exercise
puts true || false
puts true && false
puts !true || !true
puts !false && !true

#Print methods
#1)print
print "Leonel"
print "Barrientos"

#manually add a new line by using \n ** \t for tab
print "\nLeonel\n"
print "\tBarrientos\n"

#2)puts adds a new line

#3)p adds a new line add gives infor on data type

p "Leonel"
p "Program"
p "42"

#String
puts 'Leonel Barientos'.length #return the length
puts "leo"[1] # return e

puts "Leonel" + "Barrientos" #ruby uses "+" for concatenation

#Variables
location = "SF"
puts location

my_num = 42
my_num =  my_num + 8

puts my_num

count = 10
count = count + 1
count += 5
puts count

num = 12
is_even = num % 2 == 0
puts is_even

#Variables Excerise
firstName = 'Leonel'
lastName = 'Barrientos'
fullName = firstName + " " + lastName
puts fullName

#Methods

#Defining a method...
def message
  puts 'Ruby is Fun'
end #closes the method

#Step2 Call the method
message

# Method with parameter
def say_hello(person)
  puts "Hello " + person + "."
end

say_hello("Leo")

# Method with more parameter
def say_hello(person, person2)
  puts "Hello " + person + " and " + person2 + "."
end

say_hello("Leo", "Jose")

#methods
def calc_average(num1, num2)
  sum = num1 + num2
  avg = sum /2.0
  return avg
end

# the return keyword lets a method call evaluate to a value
result = calc_average(5,10)

puts result


#CONDITIONALS
num = -4

if num > 0
  puts 'positive'
elsif  num < 0
  # Ruby uses elsif
  puts 'negative'
else
  puts "it is zero"
end

if num % 2 == 0
  puts "even"
end
