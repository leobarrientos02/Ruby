#Arrays

letters = ['a', 'b', 'c']

puts letters
puts letters.length
puts letters[0]

my_array = ['leo', true, false, 42]

print my_array[1]


names = [
  'leo',
  'jose',
  'mynor',
  'paul'
]

print names
print "\n"

# add elements
names << "Stephanie"
names << "Mildred"

# change elements
names[1] = "Jake"
print names

print "\n"
foods = ['burgers', 'sushi', 'pizza', 'fries', 'ramen'];

i = 0;

while i < foods.length
  puts foods[i]
  i+=1
end


def print_array(arr)
  i = 0;

  while i < arr.length
    puts arr[i]
    i+=1
  end
end

print_array(foods)


#Doubler
def doubler(numbers)
i=0
while i < numbers.length
  numbers[i] = numbers[i] * 2
i+=1
end
return numbers
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]


print "\n"
# yell(words) is a method that takes in an array of words and returns a new array where every word from the original array has an exclamation point after it.
def yell(words)

  i = 0

  while i < words.length

    words[i] = words[i] + "!"

    i+=1
  end
  return words
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]


print "\n"
#Method element_times_index(nums) that takes in an array of numbers and returns a new array containing every number of the original array multiplied with its index.
def element_times_index(numbers)
numbers2 = []

i=0
while i < numbers.length

numbers2 << numbers[i] * i
i+=1
end

return numbers2

end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


print "\n"
#EvenNums: method that takes in a number max and returns an array containing all even numbers from 0 to max
def even_nums(max)

nums = []

i=0
while i <= max
nums << i
i+=2
end
return nums
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]


print "\n"
#Fizz Buzz: method that takes in a number max and returns an array containing all numbers greater than 0 and less than max that are divisible by either 4 or 6, but not both.
def fizz_buzz(max)

nums = []
i=0
while i <= max
if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
  nums << i
end
i+=2
end
return nums
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
