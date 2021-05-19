#To Initials : Method that takes in a person's name string and returns a string representing their initials.
def to_initials(name)
parts = name.split(" ")
initials = ""
parts.each{ |part| initials += part[0] }
return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

puts
#First In Array : method that takes in an array and two elements, the method should return the element that appears earlier in the array.
def first_in_array(arr, el1, el2)

index1 = arr.index(el1)
index2 = arr.index(el2)

if index1 < index2
  return arr[index1]
else
  return arr[index2]
end

end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"

puts
#Abbreviate Sentence: method that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.
