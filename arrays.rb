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
