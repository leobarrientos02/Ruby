#nested loops
(1..3).each do |num1|
  (1..5).each do |num2|
    puts num1.to_s + "  " + num2.to_s
  end
end
puts

arr = ['a','b','c','d']

# We iterate through all possible w/ duplicates
arr.each do |ele1|
  arr.each do |ele2|

    puts ele1 + ele2
  end
end
puts

#Itearate through only unique pairs
arr2 = ['a','b','c','d']
arr.each_with_index do |ele1,idx1|
  arr.each_with_index do |ele2,idx2|
    if( idx2 > idx1)
      puts ele1 + ele2
      puts idx1.to_s + " " + idx2.to_s
      puts "---------"
  end
  end
end

# if idx2 is greater than idx1, then idx2 is never referring to what idx1 reffered to previously

puts
#2-Dimensional Array
arr = [
  [1,2,3],
  [4,5],
  [6,7,8]
]

arr.each do |subArr|
  print subArr
  puts
  subArr.each do |ele|
    puts ele
  end
end

puts
#Combinatios: Method that takes ins an array of unique element and return a 2D array of all possible combo


def combinations(arr)

  temp = []
  arr.each_with_index do |ele1,idx1|
  arr.each_with_index do |ele2,idx2|
    if( idx2 > idx1)
      temp << [ele1, ele2]
    end
  end
  end

  return temp
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts

#Opposite Count: Method that takes in an array of unique numbers.
def opposite_count(nums)
	pairs = []
  	nums.each_with_index do |ele,idx1|
    	nums.each_with_index do |ele2,idx2|
        	if(idx1 > idx2)
              	num = ele + ele2
              if( num == 0)
          		pairs << num
              end
            end
        end
    end
  return pairs.length
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1

puts

#Two Dimensional Sum: Method that takes in a two Dimensional array and returns the sum of all element
def two_d_sum(arr)
	sum=0
  arr.each do |ele1|
    ele1.each do |ele2|
        sum += ele2
    end
  end
    return sum
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15
puts


#Two Dimensional Translate: Method that takes in a 2D array and translate it to a one Dimensional array
new_arr = []

arr.each do |subArray|
  ele = subArray[0]
  num = subArray[1]

  num.times { new_arr << ele }
end

return new_arr


#Array Translate:Method that takes in an array and returns a string
def array_translate(array)
str = ""
i = 0
while ( i < array.length)

  word = array[i]
  num = array[i+1]

	num.times { str += word }

  i+=2
end

return str
end

puts array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

puts array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
