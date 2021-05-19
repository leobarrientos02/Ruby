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
#Range: Method that takes in two numbers min and max. The method should return an array containing all numbers from min to max inclusive.
def range(min, max)
nums = []
i = min
while i <= max
nums << i
i+=1
end
return nums
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

print "\n"
#Odd Range : Method  that takes in two numbers min and max. The method should return an array containing all odd numbers from min to max (inclusive).
def odd_range(min, max)
  nums = []
  i = min
  while i <= max
    if i % 2 != 0
      nums << i
    end
  i+=1
  end
  return nums
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]

print "\n"
#Reverse range: Method that takes in two numbers min and max. The function should return an array containing all numbers from min to max in reverse order. The min and max should be excluded from the array
def reverse_range(min, max)

i = max-1
nums = []
while i > min
  nums << i
i-=1
end
return nums
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]


print "\n"
#First Half: Method that takes in an array and returns a new array containing the first half of the elements in the array. If there is an odd number of elements, return the first half including the middle element.
def first_half(array)
arr = []
middle = array.length / 2.0
#the 2.0 would allow to include the middle element if array size is odd
i=0
while i < middle
  arr << array[i]
i+=1
end

return arr
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]


print "\n"
#Factors OF : method that takes in a num and returns an array of all positive numbers less than or equal to num that can divide num.
def factors_of(num)
divisible_nums = []

i=1
while i <= num

if num % i == 0
  divisible_nums << i
end
i+=1
end
return divisible_nums
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]


print "\n"
#Select Odd Numbers: Method that takes in an array of numbers and returns a new array containing the odd numbers of the original array.
def select_odds(numbers)

arr = []
i=0
while i < numbers.length
    if numbers[i] % 2 != 0
      arr << numbers[i]
    end
i+=1
end


return arr

end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []



print"\n"
#Select Long Words : Method that takes in an array of words and returns a new array containing all of the words of the original array that are longer than 4 characters.
def select_long_words(words)

arr = []
i=0
while i < words.length

  if words[i].length > 4
    arr << words[i]
  end
i+=1
end

return arr
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]


print"\n"
#Sum Elements: Method that takes in two arrays. The method should return a new array containing the results of adding together corresponding elements of the original arrays. You can assume the arrays have the same length.
def sum_elements(arr1, arr2)
sum_array = []

i=0
while i < arr1.length

sum_array << arr1[i]  + arr2[i]
i+=1
end

return sum_array
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]

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
