# array.push adds an elements to the end of an array, evaluates to the array

arr = ['leo', 'jose', 'mynor']
print arr
puts
arr.push('paul', 'leonel')
print arr
puts

# array.pop removes the last element of an array , evaluates to the element that ws removed

print arr.pop()
puts
print arr
puts

# array.unshift adds an element to the front of an array, evaluates to the array
print arr.unshift('jose')
puts
print arr
puts
# array.shift removes the first element of an array, evaluates to the element that was removed
print arr.shift
puts


# array/string.index(ele) - evaluates to the index where ele is found
# array/string.include?(ele) - evaluates to a boolean indicating if ele is found

arr2 = ['NY', 'NJ', 'FL', "LA"]
puts arr2.index('FL')
puts arr2.index('SA')  # return nothing
puts arr2.include?("NY")
puts arr2.include?('AS')


# array.string.reverse : evaluates to a new reverse version of the array or string

arr3 = [1, 2, 3,4]
print arr3
puts
print arr3.reverse
puts

# array/string.reverse! : reverses an array/string in place
arr3.reverse!
print arr3
puts

str = 'hello'
puts str.reverse
puts

#is_palindrome example using reverse function
def is_palindrome(word)
  return word == word.reverse
end

puts is_palindrome('kayak')
puts is_palindrome('hello')

# array/string slicing
# array[startIdx..endIdx] - grabs elements from startIdx to endIdx ( inclusive)
# array[startIdx...endIdx] - grabs elements from startIdx to endIdx( excluding the element at endIdx)
arr4 = ['a', 'b', 'c', 'd']
print arr4[1..3]
puts

print arr4[1...3]
puts

str = 'leonel'
print str[2..-1]
puts

#string.split evaluates to an arrays
#array.join evaluates to a string
str2 = "Leonel is a great programmer"

print str2.split("is")
puts

arr5 = ["hello", "world", 'my', "name", "is", "leo"]
puts arr5.join(" ")
puts

str3 = 'follow the yellow brick road';
print str3.split("l").join('Z')
puts

#Enumerables Methods
# Arrays
#        .each
#        .each_with_index
# string
#        .each_char
#        .each_char.with_index
months = ['jan', 'feb', 'mar', 'apr']

months.each { |month| puts month }
puts

#Another way
months.each do |ele|
  puts ele
  puts "----"
end

#string
str6 = 'hello world'
str6.each_char do |char|
  puts char
end

str6.each_char.with_index do |char, idx|
  puts char
  puts idx
  puts "-----"
end

#with access to the with_index
months.each_with_index do |ele, idx|
  puts ele
  puts idx
end


#Enumerables Ranges
# (start..end).each : iterate from start to end ( inclusive)
# (start...end).each : iterate from start to end ( exclusive)
puts
arr = [ 1,2,3,4,5,6]
arr.each {
  |num|
  puts num
}
puts
(1..10).each {
  |num|
  puts num
}
puts
(5...15).each {
  |num|
  puts num
}
puts
#fizz_buzz in a different way
def fizzBuzz(max)
arr8 = []

  (1...max).each do |num|
    if num % 3 == 0 && num % 5 != 0
      arr8 << num
    end
    if num % 3 != 0 && num % 5 == 0
      arr8 << num
    end
  end
return arr8
end

puts fizzBuzz(20)
puts

(0...4).each { puts "hello"}

#another way to do the code above
4.times { puts "hack"}
