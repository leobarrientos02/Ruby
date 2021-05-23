#Data Structures --Hashes
# Key => value pairs

my_hash = {
  "name" => "Leonel Barrientos",
  "color" => "blue",
  "age" => 23,
  "isCool" => true,
  404 => 'error'
}

puts my_hash["name"]

#change a value
my_hash["color"] = "green"
my_hash['age'] +=2
puts my_hash


puts
puts "Hashes Methods"

#Hashes Methods
ufc = {

  "fname" => 'Connor',
  "lname" => 'McGreggor',
  'age' => 33,
  'type' => 'striker',
  'enemy' => ['Khabib Nurmagomedov', 'Dustin Poirer']

}

puts  ufc.length
puts ufc

print ufc.has_key?("age")
puts
print ufc.has_key?("record")
puts

print ufc.has_value?(33)
puts
print ufc.keys
puts
print ufc.values
puts

ufc.each do |keys, values|
  puts keys
  puts values
  puts "------"
end
puts

#Default values
people = Hash.new(0)

puts people["c"]
puts

counter = Hash.new(0)

str = "Leonel Barrientos"
str.each_char { |char| counter[char] += 1}
puts counter
puts

sorted = counter.sort_by { |k,v| v}
print sorted[-1][0]
puts
puts

#Get double change
def get_double_age(hash)

  return hash['age'] * 2
end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46
puts


#Get full name
def get_full_name(hash)
	fname = hash['first']
  	lname = hash['last']
    title = hash['title']

  	return fname + " " + lname + ", " + title
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"
