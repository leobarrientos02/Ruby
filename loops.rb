#while loop
def repeatHello()
  counter = 1
  while counter <= 5
    puts 'hello'
    counter += 1
  end
end

repeatHello()


def printNums

  i=0
  while i < 4
    puts i
    i +=1
  end
end

printNums()


def printNum( min, max)
  i= min
  while i <= max
    puts i
    i += 1
  end
end

printNum(0,20)

#Iterating through strings wiht loops

str = 'leonel'
i = 0
strl = str.length
while i < strl
  puts str[i]
  i +=1
end


#Keywords for loops
#break- exit the loop
#next- skips the next iteration

i = 1
while i<=10
  puts i
  if i == 5
    break
  end
  puts i+=1
end

puts "loop end"


#Count E method that takis in string word and returns the number of e
def count_e(word)

i=0
counter = 0
while i < word.length
  if word[i] == 'e'
    counter +=1
  end
  i +=1
end

return counter
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3


#CountA
def count_a(word)
  i=0
  counter = 0
  while i < word.length
    if word[i] == 'a' || word[i] == 'A'
      counter +=1
    end
    i +=1
  end

  return counter
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3


#count vowels
def count_vowels(word)
  i=0
  counter = 0
  while i < word.length
    if word[i] == 'a' || word[i] == 'e' || word[i] == 'i'|| word[i] == 'o' || word[i] == 'u'
      counter +=1
    end
    i +=1
  end

  return counter
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2


#sum nums
def sum_nums(max)

i = 0
sum = 0;
while i <= max
  sum += i
i+=1
end

return sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15


#Factorial
def factorial(num)
  i = 1
  prod = 1;
  while i <= num
    prod *= i
  i+=1
  end

  return prod
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120


#reverse
def reverse(word)

i= word.length

while i >= 0
  print word[i]
i-=1
end
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"


#is Palindrome
# method that  takes in a string word and returns the true if the word is a palindrome, false otherwise. A palindrome is a word that is spelled the same forwards and backwards.
def is_palindrome(word)
  reversed = ""

  i = 0
  while i < word.length
    char = word[i]
    reversed = char + reversed

    i += 1
  end

  return reversed == word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false
